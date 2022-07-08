
import 'package:ataa_charity_system/view/screens/profile_screen/setting_screen/settings_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../translation/locale_keys.g.dart';
import '../login_screen/login_screen.dart';
import 'about_charity_screen/main_about_screen.dart';
import 'active_screen/activity_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            LocaleKeys.profile.tr(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defultPadding),
              child: SvgPicture.asset(
                'assets/icons/add-user.svg',
                height: 100,
                width: 100,
              ),
            ),
            Text(
              LocaleKeys.title_profile.tr(),
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defultPadding * 2),
              child: Text(LocaleKeys.subtitle_profile.tr(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  child: Text(
                    LocaleKeys.login.tr(),
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: defultPadding * 3,
            ),
            ProfileCard(
              icon: Icons.settings,
              title: LocaleKeys.settings.tr(),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingScreen()));
              },
            ),
            const SizedBox(
              height: defultPadding,
            ),
            ProfileCard(
              icon: Icons.spa_outlined,
              title: LocaleKeys.activity.tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ActivityScreen()),
                );
              },
            ),
            const SizedBox(
              height: defultPadding,
            ),
            ProfileCard(
              icon: Icons.privacy_tip_outlined,
              title: LocaleKeys.about_ataa_profile.tr(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MainAboutScreen()),
                );
              },
            ),
            const SizedBox(
              height: defultPadding,
            ),
            ProfileCard(
              icon: Icons.logout_outlined,
              title: LocaleKeys.logout.tr(),
              onTap: () {
                showLogOutDialog(context);
              },
            ),
            const SizedBox(
              height: defultPadding,
            ),
          ],
        ),
      ),
//bottomNavigationBar: const BottomsNavigationBar(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defultPadding * 1.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: defultPadding),
                      child: Icon(icon),
                    ),
                    const SizedBox(
                      width: defultPadding,
                    ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.black87, fontSize: 10.sp),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showLogOutDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
            elevation: 24,
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen()));

                  //   Navigator.popUntil(context, (route) => false);
                },
                child: Text('نعم',
                    style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('لا',
                    style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
            ],
            title: Text('تحذير',
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            content: Text('هل أنت متأكد من تسجيل الخروج',
                style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
          ));
}
