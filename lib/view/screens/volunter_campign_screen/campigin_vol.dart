// ignore_for_file: camel_case_types, must_be_immutable
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/model/donaition_items.dart';
import 'package:ataa_charity_system/view/screens/volunter_campign_screen/volunteer_info.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';

class Campigin_vol extends StatelessWidget {
  Campigin_vol({
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
                    borderRadius: const BorderRadius.only(
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
                        Text("remember cost".tr(),
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 9.sp,
                            )),
                        Text(campaign.remember,
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 8.sp,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defultPadding),
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VolunteerInfoScreen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.primary1),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defultPadding / 2,
                                      horizontal: defultPadding * 2),
                                  child: Text(
                                    'تـطـوع الآن',
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: const Color.fromARGB(
                                            255, 214, 225, 237)),
                                  )),
                            )),
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
