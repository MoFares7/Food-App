import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/model/donaition_items.dart';

import 'package:flutter/material.dart';
import 'details_body.dart';
import 'details_navigation_bar.dart';

// ignore: camel_case_types
class Details_Screen extends StatelessWidget {
  const Details_Screen({Key? key, required this.campaigns}) : super(key: key);
  final Campaign campaigns;

  static const String routeName = 'Details_screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary1,
          title: const Center(
              child: Text(
            'تفاصيل الحملة  ',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Detailsbody(
          campaign: campaigns,
        ),
        bottomNavigationBar: DetailsNavigationBar(size: size));
  }
}
