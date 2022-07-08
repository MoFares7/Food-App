// ignore_for_file: non_constant_identifier_names
import 'package:ataa_charity_system/view/screens/home_screen/root_screen_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../logic/bloc/registration/registration_bloc_bloc.dart';
import '../../../translation/locale_keys.g.dart';
import '../../widgets/email_filed.dart';
import '../../widgets/main_buttom.dart';
import '../../widgets/password-filed.dart';
import '../login_screen/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  static const String routeName = 'sign_up_screen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => SignUpScreen(),
    );
  }

  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _registrationButtonPressed() {
      String first_name = _firstNameController.text.trim();
      String last_name = _lastNameController.text.trim();
      String email = _emailController.text.trim();
      String password = _passwordController.text;

      // add register event to registration bloc
      context.read<RegistrationBloc>().add(
            RegisterButtonPressed(
              first_name: first_name,
              last_name: last_name,
              email: email,
              password: password,
            ),
          );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary1,
      body: BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          if (state is RegistrationFaliure) {
            var snackBar = const SnackBar(
              content: Text('Some Error , Create Account Opreation is Faild'),
              duration: Duration(
                milliseconds: 1000,
              ),
            );
            // show snackBar to tell user that login has faild
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state is RegistrationInitial) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Stack(children: [
            Image.asset(
              "assets/images/Mask_Group.png",
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: defultPadding,
                      ),
                      AspectRatio(
                          aspectRatio: 4 / 1.2,
                          child: Image.asset("assets/images/signup.png")),
                      Text(
                        LocaleKeys.new_logain.tr(),
                        style: TextStyle(fontSize: 10.sp, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defultPadding * 3),
                        child: Center(
                          child: Text(LocaleKeys.subtitle.tr(),
                              style: TextStyle(
                                  fontSize: 7.sp, color: Colors.white)),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding,
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    // height: 400,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40))),
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defultPadding,
                                      horizontal: defultPadding * 2),
                                  child: Text(
                                    LocaleKeys.first_name.tr(),
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.black),
                                  ),
                                ),
                                NameFormEditing(
                                  hintText: LocaleKeys.first_name.tr(),
                                  controller: _firstNameController,
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: 'الحقل مطلوب'),
                                    EmailValidator(
                                        errorText: 'ادخل الاسم الصحيح')
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defultPadding,
                                      horizontal: defultPadding * 2),
                                  child: Text(
                                    LocaleKeys.last_name.tr(),
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.black),
                                  ),
                                ),
                                NameFormEditing(
                                  hintText: LocaleKeys.last_name.tr(),
                                  controller: _lastNameController,
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: 'الحقل مطلوب'),
                                    EmailValidator(
                                        errorText: '  ادخل الاسم الصحيح')
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defultPadding,
                                      horizontal: defultPadding * 2),
                                  child: Text(
                                    LocaleKeys.email.tr(),
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.black),
                                  ),
                                ),
                                TextFormEditing(
                                  hintText: "  domain@gmail.com ",
                                  controller: _emailController,
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: 'الحقل مطلوب'),
                                    EmailValidator(
                                        errorText:
                                            'ادخل البريد الالكتروني الصحيح  ')
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defultPadding,
                                      horizontal: defultPadding * 2),
                                  child: Text(
                                    LocaleKeys.password.tr(),
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.black),
                                  ),
                                ),
                                PasswordFormFiled(
                                    hintText: tr('password'),
                                    controller: _passwordController,
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: 'الحقل مطلوب'),
                                      EmailValidator(
                                          errorText:
                                              '  ادخل  كلمة المرور الصحيح')
                                    ]),
                                    icon: Icons.lock),
                                const SizedBox(
                                  height: defultPadding * 1.5,
                                ),
                                BlocBuilder<RegistrationBloc,
                                        RegistrationState>(
                                    builder: (context, state) {
                                  if (state is RegistrationLoading) {
                                    return MainButtom(
                                      onPressed: () {},
                                      color: AppColors.primary1,
                                      textcolor: AppColors.textLigth,
                                      title: LocaleKeys.create_account.tr(),
                                    );
                                  }

                                  const CircularProgressIndicator(
                                    strokeWidth: 3,
                                    color: AppColors.primary1,
                                  );
                                  return MainButtom(
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        _registrationButtonPressed();
                                      }
                                    },
                                    color: AppColors.primary1,
                                    textcolor: AppColors.textLigth,
                                    title: LocaleKeys.create_account.tr(),
                                  );
                                }),
                                const SizedBox(
                                  height: defultPadding,
                                ),
                                MainButtom(
                                  onPressed: () async {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RootScreenState()),
                                    );
                                  },
                                  color: Colors.white,
                                  textcolor: AppColors.textDark,
                                  title: LocaleKeys.login_as_guest.tr(),
                                ),
                                const SizedBox(
                                  height: defultPadding,
                                ),
                                const SizedBox(
                                  height: defultPadding,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      LocaleKeys.info_account.tr(),
                                      style: TextStyle(
                                          fontSize: 7.sp, color: Colors.black),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, LoginScreen.routeName);
                                        },
                                        child: Text(
                                          LocaleKeys.login.tr(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 7.sp),
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: defultPadding,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
