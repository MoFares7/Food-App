
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/view/screens/profile_screen/active_screen/sponsor-all/main_mune_sponsor_screen.dart';
import 'package:ataa_charity_system/view/screens/profile_screen/profile_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../configs/size.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../gift_screen/gift_screen.dart';
import '../../notification_screen/notifications_screen.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.primary1,
        title: Center(
          child: Text(
            LocaleKeys.activity.tr(),
            style: const TextStyle(color: Colors.white),
          ),
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
            title: LocaleKeys.sponsorship.tr(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainMuneSponsorScreen()),
              );
            },
          ),
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
              icon: Icons.tips_and_updates,
              title: LocaleKeys.gift.tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GiftScreen()),
                );
              }),
          const SizedBox(
            height: defultPadding,
          ),
          ProfileCard(
              icon: Icons.notifications,
              title: LocaleKeys.notificatin.tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()),
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
