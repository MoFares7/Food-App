import 'package:ataa_charity_system/view/widgets/sponsor_card.dart';
import 'package:flutter/material.dart';

import '../../../../../configs/size.dart';
import '../../../../../configs/theme.dart';

class MySponserationScreen extends StatelessWidget {
  const MySponserationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        title: const Text(
          'كفالتي',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.primary1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: 'رامي العلبي', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: 'خالد الحمصي', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: 'سمير الاحمد', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: 'أحمد الحمصي', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: 'علاء الدين زامل ', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: ' كريم منصور', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: ' فراس دياب', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
          SponsorCard(title: ' رضا برنبو', onTap: () {}),
          const SizedBox(
            height: defultPadding,
          ),
        ],
      ),
    );
  }
}
