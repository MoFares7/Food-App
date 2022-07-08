// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../model/donaition_items.dart';
import '../../../translation/locale_keys.g.dart';
import '../../widgets/donation_button.dart';

class Campigin_don extends StatelessWidget {
  Campigin_don({
    Key? key,
    required this.size,
    required this.campaign,
  }) : super(key: key);

  final Size size;
  Campaign campaign;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          //height: size.height / 1.8,
          //  width: size.width / 1.1,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                height: size.height / 3.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          campaign.imageUrll,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defultPadding, vertical: defultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "134 ذوي احتياج",
                          style: TextStyle(
                              color: AppColors.secondary, fontSize: 7.sp),
                        ),
                        Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                campaign.type,
                                style: TextStyle(
                                    color: AppColors.textLigth, fontSize: 7.sp),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defultPadding,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          campaign.title_donation,
                          style: TextStyle(
                              color: AppColors.primary1,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(campaign.cost,
                            style: TextStyle(
                              color: AppColors.primary1,
                              fontSize: 8.sp,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defultPadding, vertical: defultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(LocaleKeys.remember_cost.tr(),
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 9.sp,
                            )),
                        Text("4300000",
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 10.sp,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: defultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: defultPadding),
                        child: DonationButton(
                          color: AppColors.primary1,
                          textcolor: AppColors.textLigth,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/share.svg",
                              color: AppColors.primary1,
                              height: 30,
                              width: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(10),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/icons/shopping.svg",
                              color: AppColors.primary1,
                              height: 30,
                              width: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(10),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: defultPadding,
              )
            ],
          ),
        ),
      ),
    );
  }
}
