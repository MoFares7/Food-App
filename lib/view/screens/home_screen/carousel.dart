
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';

class CreateCarousel extends StatelessWidget {
  const CreateCarousel({
    Key? key,
    required this.imageUrl2,
    required this.index,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final String imageUrl2;
  final int index;
  final String title;
  final String subTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        // height: 40.h,
        width: size.width / 1.3,
        //   margin: const EdgeInsets.symmetric(horizontal: defultPadding),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/blue-card.jpg'),
                fit: BoxFit.cover),
            color: AppColors.primary1,
            borderRadius: BorderRadius.circular(10)),
        child: Expanded(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defultPadding),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: AppColors.textLigth, fontSize: 14.sp),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          subTitle,
                          style: TextStyle(
                              color: AppColors.textLigth, fontSize: 9.sp),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding,
                      ),
                      MaterialButton(
                          onPressed: () {
                            onTap();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.cardLight),
                            child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: defultPadding / 2,
                                    horizontal: defultPadding * 2),
                                child: Text(
                                  'أبدا الآن',
                                  style: TextStyle(
                                      color: AppColors.textDark, fontSize: 10),
                                )),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
