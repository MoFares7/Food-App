
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../widgets/donation_button.dart';

class CardsDonaition extends StatelessWidget {
  const CardsDonaition({
    Key? key,
    required this.onTab,
    required this.image,
    required this.type,
    required this.title_donation,
    required this.cost,
    required this.remember,
  }) : super(key: key);

  final String image;
  final String type;
  final String title_donation;
  final String cost;
  final String remember;
  final Function onTab;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onTab();
      },
      child: Expanded(
        child: Container(
          width: size.width / 1.4,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                height: size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover),
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
                              color: AppColors.secondary, fontSize: 8.sp),
                        ),
                        Container(
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                type,
                                style: const TextStyle(
                                    color: AppColors.textLigth, fontSize: 12),
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
                          title_donation,
                          style: TextStyle(
                              color: AppColors.primary1,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(cost,
                            style: TextStyle(
                              color: AppColors.primary1,
                              fontSize: 9.sp,
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
                        Text("  المبلغ المتبقي",
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 8.sp,
                            )),
                        Text(remember,
                            style: TextStyle(
                              color: AppColors.textDark,
                              fontSize: 7.sp,
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
                      const DonationButton(
                        color: AppColors.primary1,
                        textcolor: AppColors.textLigth,
                      ),
                      Row(children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            "assets/icons/share.svg",
                            color: AppColors.primary1,
                            height: 25,
                            width: 25,
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
                            height: 25,
                            width: 25,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(10),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  const SizedBox(
                    height: defultPadding,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
