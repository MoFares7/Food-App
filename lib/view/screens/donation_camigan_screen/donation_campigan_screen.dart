
import 'package:ataa_charity_system/model/donaition_items.dart';
import 'package:ataa_charity_system/view/screens/volunter_campign_screen/volunter_campign_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import 'campigin_don.dart';

class DonationCampiganScreen extends StatelessWidget {
  DonationCampiganScreen({
    Key? key,
  }) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        title: Center(
            child: Text(
          'donation campign'.tr(),
          style: const TextStyle(color: Colors.white),
        )),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defultPadding, vertical: defultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxsAlignment: CrossAxisAlignment.center,
            children: const [
              ButtonsNavigationCircle(
                icon: "assets/icons/medical.svg",
              ),
              ButtonsNavigationCircle(
                icon: "assets/icons/education.svg",
              ),
              ButtonsNavigationCircle(
                icon: "assets/icons/happy_smail.svg",
              ),
              ButtonsNavigationCircle(
                icon: "assets/icons/other.svg",
              ),
            ],
          ),
        ),
        const SizedBox(
          height: defultPadding / 2,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: defultPadding),
            child: SearchFiled(
                hintText: 'بحث عن حملة', controller: _searchController)),
        const SizedBox(
          height: defultPadding,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Campigin_don(
                      size: size,
                      campaign: campaign[index],
                    ),
                    const SizedBox(
                      height: defultPadding,
                    )
                  ],
                );
              }),
        )
      ]),
      //bottomNavigationBar: const BottomsNavigationBar(),
    );
  }
}

class ButtonsNavigationCircle extends StatelessWidget {
  const ButtonsNavigationCircle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        // margin: EdgeInsets.symmetric(vertical: defultPadding * 4),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 11, 11, 11).withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 0),
              ),
            ]),
        child: MaterialButton(
          onPressed: () {},
          child: SvgPicture.asset(
            icon,
            height: 60,
            width: 60,
            color: AppColors.primary1,
          ),
        ));
  }
}
