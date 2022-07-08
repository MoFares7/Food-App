
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../configs/size.dart';
import '../../../../configs/theme.dart';

class ConnectUs extends StatelessWidget {
  const ConnectUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          'اتصل بنا',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defultPadding,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text('معلومات التواصل',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            AspectRatio(
              aspectRatio: 3 / 1.5,
              child: Image.asset(
                'assets/images/location.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Text('العنوان',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                )),
            const Divider(),
            const SizedBox(
              height: defultPadding,
            ),
            Text('- دمشق  المالكي  الجادة 1',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
//fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: defultPadding,
            ),
            Text('أرقام التواصل ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                )),
            const Divider(),
            const SizedBox(
              height: defultPadding,
            ),
            Row(
              children: [
                Text(' رقم الهاتف ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      //   fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  width: defultPadding,
                ),
                Text('0117007  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      //   fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Row(
              children: [
                Text(' رقم الجوال ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      //   fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  width: defultPadding,
                ),
                Text('+963943632624  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      //   fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
