
import 'package:ataa_charity_system/logic/bloc/login/login_bloc_bloc.dart';
import 'package:ataa_charity_system/view/screens/home_screen/root_screen_state.dart';
import 'package:ataa_charity_system/view/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';
import './translation/codegen_loader.g.dart';
import 'configs/routeconfigs.dart';
import 'configs/theme.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/shared_prefs_repository.dart';
import 'logic/bloc/auth/auth_bloc_bloc.dart';
import 'logic/bloc/registration/registration_bloc_bloc.dart';
import 'logic/localization/bloc/language_bloc.dart';
import 'logic/navigation/navigation_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translation',
      supportedLocales: const [Locale('ar'), Locale('en')],
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    final AuthRepository authRepository = AuthRepository(storage);
    final SharedPrefsRepository prefsRepository =
        SharedPrefsRepository(storage);
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthBloc(
              authRepository,
            )..add(AppStarted()),
          ),
          BlocProvider(
            create: (context) => RegistrationBloc(
              authRepository: authRepository,
              authBloc: context.read<AuthBloc>(),
            ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              authRepository: authRepository,
              authBloc: context.read<AuthBloc>(),
            ),
          ),
          BlocProvider(create: (context) => NavigationBloc()),
          BlocProvider(create: (context) => LanguageBloc()),
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return (MaterialApp(
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
                locale: context.locale,
                title: 'Charity Management System',
                debugShowCheckedModeBanner: false,
                onGenerateRoute: AppRouter.onGenerateRoute,
                theme: AppTheme.light(),
                darkTheme: AppTheme.dark(),
                themeMode: ThemeMode.light,
                home: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state is AuthAuthenticated) {
                        return const RootScreenState();
                      }
                      if (state is AuthUnauthenticated) {
                        return const WelcomeScreen();
                      }
                      return const Scaffold(
                        body: SafeArea(
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary1,
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                      );
                    })));
          },
        ));
  }
}
