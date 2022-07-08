
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../translation/locale_keys.g.dart';

class AtaaNumbers extends StatelessWidget {
  const AtaaNumbers({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height / 1.7,
      width: size.width / 1.2,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [AppColors.secondary, AppColors.primary1],
          ),
          color: AppColors.primary1,
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        const SizedBox(
          height: defultPadding,
        ),
        Text(
          LocaleKeys.atta_number.tr(),
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textLigth),
        ),
        const SizedBox(
          height: defultPadding,
        ),
        Container(
          // height: size.height / 7,
          width: size.width / 1.7,
          decoration: BoxDecoration(
              color: const Color.fromARGB(174, 13, 126, 175),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/money.assets"),
              Text(
                LocaleKeys.total_donations.tr(),
                style: TextStyle(fontSize: 10.sp, color: AppColors.textLigth),
              ),
              Text(
                "10,150,470,900  ل.س",
                style: TextStyle(fontSize: 9.sp, color: AppColors.textLigth),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: defultPadding,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //height: size.height / 7,
              width: size.width / 2.7,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 13, 126, 175),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.number_of_shareholders.tr(),
                    style:
                        TextStyle(fontSize: 10.sp, color: AppColors.textLigth),
                  ),
                  Text(
                    " 1520,100",
                    style:
                        TextStyle(fontSize: 9.sp, color: AppColors.textLigth),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: defultPadding,
            ),
            Container(
              //     height: size.height / 7,
              width: size.width / 2.7,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(174, 13, 126, 175),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      LocaleKeys.the_number_of_beneficiaries.tr(),
                      style: TextStyle(
                          fontSize: 10.sp, color: AppColors.textLigth),
                    ),
                  ),
                  Text(
                    "10,500  ",
                    style:
                        TextStyle(fontSize: 9.sp, color: AppColors.textLigth),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: defultPadding,
        ),
        Container(
          //   height: size.height / 7,
          width: size.width / 1.7,
          decoration: BoxDecoration(
              color: const Color.fromARGB(174, 13, 126, 175),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.the_number_of_activities_of_the_association.tr(),
                style: TextStyle(fontSize: 10.sp, color: AppColors.textLigth),
              ),
              Text(
                "345 ",
                style: TextStyle(fontSize: 9.sp, color: AppColors.textLigth),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: defultPadding * 2,
        )
      ]),
    );
  }
}
