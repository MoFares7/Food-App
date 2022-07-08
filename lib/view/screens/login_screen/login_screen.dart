// ignore_for_file: import_of_legacy_library_into_null_safe, unnecessary_null_comparison, avoid_print
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/view/screens/login_screen/logged_in_screen.dart';
import 'package:ataa_charity_system/view/widgets/circle_button.dart';
import 'package:ataa_charity_system/view/widgets/main_buttom.dart';
import 'package:ataa_charity_system/view/widgets/password-filed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';
import '../../../api/google_signing_api.dart';
import '../../../configs/size.dart';
import '../../../logic/bloc/login/login_bloc_bloc.dart';
import '../../widgets/email_filed.dart';
import '../home_screen/root_screen_state.dart';
import '../signUp_screen/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = 'login_screen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const LoginScreen(),
    );
  }

  @override
  State<LoginScreen> createState() => _LiginScreenState();
}

class _LiginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _logoutButtonPressed() {
      String email = _emailController.text.trim();
      String password = _passwordController.text;

      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(email, password),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary1,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginFaliure) {
            var snackBar = const SnackBar(
              content: Text('Some Error , Login Opreation is Faild'),
              duration: Duration(milliseconds: 1000),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state is LoginInitial) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset("assets/images/Mask_Group.png", fit: BoxFit.cover),
              Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 2900,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: defultPadding,
                          ),
                          AspectRatio(
                              aspectRatio: 3 / 1.2,
                              child: Image.asset("assets/images/sign_in.png")),
                          Text(
                            'login'.tr(),
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.white),
                          ),
                          Text('subtitle_login'.tr(),
                              style: TextStyle(
                                  fontSize: 7.sp, color: Colors.white)),
                          const SizedBox(
                            height: defultPadding,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      //  height: 400,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              topLeft: Radius.circular(40))),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Form(
                          key: formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defultPadding * 2,
                                    horizontal: defultPadding * 2),
                                child: Text(
                                  'email'.tr(),
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              TextFormEditing(
                                hintText: "09xxxxxxxx / Email@domin.com",
                                controller: _emailController,
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'الحقل مطلوب'),
                                  EmailValidator(
                                      errorText:
                                          '  ادخل البريد الإلكتروني الصحيح')
                                ]),
                              ),
                              const SizedBox(
                                height: defultPadding * 1.5,
                              ),
                              PasswordFormFiled(
                                  hintText: 'password'.tr(),
                                  controller: _passwordController,
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: 'الحقل مطلوب'),
                                    EmailValidator(
                                        errorText: '  ادخل  كلمة المرور الصحيح')
                                  ]),
                                  icon: Icons.lock),
                              const SizedBox(
                                height: defultPadding * 1.5,
                              ),
                              BlocBuilder<LoginBloc, LoginState>(
                                builder: (context, state) {
                                  if (state is LoginLoading) {
                                    return MainButtom(
                                      onPressed: () {},
                                      color: AppColors.primary1,
                                      textcolor: AppColors.textLigth,
                                      title: 'login'.tr(),
                                    );
                                  }
                                  const CircularProgressIndicator(
                                    color: AppColors.primary1,
                                    strokeWidth: 3,
                                  );
                                  return MainButtom(
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        _logoutButtonPressed();
                                      }
                                    },
                                    color: AppColors.primary1,
                                    textcolor: AppColors.textLigth,
                                    title: 'login'.tr(),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: defultPadding,
                              ),
                              MainButtom(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RootScreenState()));
                                },
                                color: AppColors.scaffoldColor,
                                textcolor: AppColors.textDark,
                                title: 'login_as_guest'.tr(),
                              ),
                              const SizedBox(
                                height: defultPadding,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleButton(
                                    image: "assets/icons/facebook.svg",
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: defultPadding,
                                  ),
                                  InkWell(
                                    child: ElevatedButton(
                                      onPressed: signIn,
                                      child: SvgPicture.asset(
                                        "assets/icons/google.svg",
                                        height: 30,
                                        width: 30,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        shape: const CircleBorder(),
                                        padding: const EdgeInsets.all(10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: defultPadding,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'info_account'.tr(),
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        //fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, SignUpScreen.routeName);
                                      },
                                      child: Text(
                                        'info_account2'.tr(),
                                        style: TextStyle(
                                            fontSize: 7.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: defultPadding,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    final user = await GoogleSignInApi.login();
    user!.authentication.then((googleKey) {
      print(googleKey.accessToken);
    });
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Sign in Faild')));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoggedInScreen(user: user)));
    }
  }
/*
  void login() async {
    final facebookLogin = FacebookLogin();
    final facebookLoginResult = await facebookLogin.logIn(['email']);

    print(facebookLoginResult.accessToken);
    print(facebookLoginResult.accessToken.token);
    print(facebookLoginResult.accessToken.expires);
    print(facebookLoginResult.accessToken.permissions);
    print(facebookLoginResult.accessToken.userId);
    print(facebookLoginResult.accessToken.isValid());

    print(facebookLoginResult.errorMessage);
    print(facebookLoginResult.status);

    final token = facebookLoginResult.accessToken.token;

    /// for profile details also use the below code

    /*
    from profile you will get the below params
    {
     "name": "Iiro Krankka",
     "first_name": "Iiro",
     "last_name": "Krankka",
     "email": "iiro.krankka\u0040gmail.com",
     "id": "<user id here>"
    }
   */
  }

*/
}
