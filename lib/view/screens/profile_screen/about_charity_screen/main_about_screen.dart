
import 'package:ataa_charity_system/view/screens/profile_screen/about_charity_screen/about_atta.dart';
import 'package:ataa_charity_system/view/screens/profile_screen/about_charity_screen/conect_us.dart';
import 'package:ataa_charity_system/view/screens/profile_screen/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../configs/size.dart';
import '../../../../configs/theme.dart';
import '../../../../translation/locale_keys.g.dart';

class MainAboutScreen extends StatelessWidget {
  const MainAboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        leading: const SizedBox(),
        title: Text(
          LocaleKeys.about_ataa_profile.tr(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
            icon: Icons.privacy_tip_outlined,
            title: LocaleKeys.about_ataa_profile.tr(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutAtta()),
              );
            },
          ),
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
            icon: Icons.phone,
            title: LocaleKeys.center_contact.tr(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConnectUs()),
              );
            },
          ),
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
            icon: Icons.policy_rounded,
            title: LocaleKeys.policy_privce.tr(),
            onTap: () {},
          ),
          const SizedBox(
            height: defultPadding,
          ),
        ],
      ),
    );
  }
}
