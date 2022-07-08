import 'package:ataa_charity_system/view/screens/profile_screen/active_screen/sponsor-all/start_sponsor_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../configs/size.dart';
import '../../../../../configs/theme.dart';
import '../../../../../translation/locale_keys.g.dart';

import '../../profile_screen.dart';
import 'my_sponseration_screen.dart';

class MainMuneSponsorScreen extends StatelessWidget {
  const MainMuneSponsorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.primary1,
        title: Text(
          LocaleKeys.sponsorship.tr(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        children: [
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
            icon: Icons.spa_outlined,
            title: 'ابدأ الكفالة',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StartSponsorScreen()),
              );
            },
          ),
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
              icon: Icons.tips_and_updates,
              title: 'كفالاتي',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MySponserationScreen()),
                );
              }),
          const SizedBox(
            height: defultPadding,
          ),
        ],
      ),
    );
  }
}
