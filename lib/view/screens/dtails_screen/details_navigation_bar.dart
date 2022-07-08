
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:flutter/material.dart';

import '../../../configs/size.dart';

class DetailsNavigationBar extends StatelessWidget {
  const DetailsNavigationBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defultPadding * 2, vertical: defultPadding),
            child: Container(
              height: 60,
              width: size.width / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primary1,
              ),
              child: MaterialButton(
                onPressed: () {},
                height: 20,
                minWidth: 20,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: defultPadding, vertical: defultPadding / 1.5),
                  child: Text(
                    "تبرع الآن ",
                    style: TextStyle(color: AppColors.textLigth),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: defultPadding),
            child: Container(
              height: 60,
              width: size.width / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFF707070))),
              child: MaterialButton(
                onPressed: () {},
                height: 20,
                minWidth: 20,
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: defultPadding / 2,
                      vertical: defultPadding / 1.5),
                  child: Text(
                    " أضف للسلة ",
                    style: TextStyle(color: AppColors.primary1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
