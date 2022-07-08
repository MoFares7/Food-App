
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../configs/size.dart';
import '../../translation/locale_keys.g.dart';
import '../screens/payment_donation_screen/normal_donation.dart';

class DonationButton extends StatelessWidget {
  const DonationButton({
    Key? key,
    required this.color,
    required this.textcolor,
  }) : super(key: key);

  final Color color;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          NormalDonationScreen(context);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: color),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: defultPadding / 2, horizontal: defultPadding * 2),
              child: Text(
                LocaleKeys.donation.tr(),
                style: TextStyle(color: textcolor, fontSize: 10),
              )),
        ));
  }
}
