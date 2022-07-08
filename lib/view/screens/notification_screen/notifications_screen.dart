
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        title: Center(
          child: const Text(
            'notification',
            style: TextStyle(color: AppColors.textLigth),
          ).tr(),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const CardNotification(),
                )
              ],
            );
          }),
    );
  }
}

class CardNotification extends StatelessWidget {
  const CardNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defultPadding / 2, horizontal: defultPadding / 2),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defultPadding),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'إشعار كفالة',
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.textDark,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            const SizedBox(
              height: defultPadding / 2,
            ),
            Text(
              'قام علاء الدين زامل بإجراء عمل جراحي بالعقل وهو بحاجة إلي 200000 ل.س ',
              style: TextStyle(
                fontSize: 7.sp,
                color: AppColors.textDark,
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: defultPadding / 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defultPadding),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ' 12/2/2020',
                  style: TextStyle(
                    fontSize: 6.sp,
                    color: AppColors.textDark,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
