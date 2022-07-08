// ignore_for_file: non_constant_identifier_names

import 'package:ataa_charity_system/view/widgets/main_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../gift_screen/gift_screen.dart';

Future<dynamic> SpeedDonationScreen(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: defultPadding),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                'تبرع سريع ',
                style: TextStyle(
                    fontSize: 8.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: defultPadding / 2,
              ),
              const Divider(),
              const SizedBox(
                height: defultPadding / 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        '1000 ل.س',
                        style: TextStyle(fontSize: 7.sp),
                      )),
                    ),
                    Container(
                      height: 5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        '5000 ل.س',
                        style: TextStyle(fontSize: 7.sp),
                      )),
                    ),
                    Container(
                      height: 5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        '10000 ل.س',
                        style: TextStyle(fontSize: 7.sp),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: defultPadding,
              ),
              TextFormEditing2(
                  hintText: "أو أدخل مبلغ آخر",
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'الحقل مطلوب'),
                    EmailValidator(errorText: '  ادخل المبلغ الصحيح')
                  ]),
                  inputType: TextInputType.number),
              const SizedBox(
                height: defultPadding,
              ),
              Text(
                'تأكد أن تبرعك سيذهب للحالات الأكثر احتياجاً ',
                style: TextStyle(fontSize: 8.sp, color: Colors.black),
              ),
              const SizedBox(
                height: defultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        // color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/cash.svg',
                        fit: BoxFit.cover,
                        height: 40.sp,
                      )),
                    ),
                    Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        // color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/visa-card.svg',
                      )),
                    ),
                    Container(
                      height: 5.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        // color: AppColors.cardLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/paypal.svg',
                        fit: BoxFit.cover,
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: defultPadding,
              ),
              MainButtom(
                  color: AppColors.primary1,
                  textcolor: AppColors.textLigth,
                  title: 'تبرع الآن',
                  onPressed: () {})
            ]));
      });
}
