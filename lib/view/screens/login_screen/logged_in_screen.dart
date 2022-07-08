
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/view/screens/login_screen/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../api/google_signing_api.dart';
import '../../../configs/size.dart';
import '../../../translation/locale_keys.g.dart';

class LoggedInScreen extends StatelessWidget {
  final GoogleSignInAccount user;

  const LoggedInScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
          backgroundColor: AppColors.primary1,
          title: const Center(
            child: Text('Logged In'),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await GoogleSignInApi.logout();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              child: const Text('Logout'),
            ),
          ]),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.profile.tr(),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Text(
              ' Name :' + user.displayName!,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Text(
              ' Email :' + user.email,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
