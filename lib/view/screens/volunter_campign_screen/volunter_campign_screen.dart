import 'package:ataa_charity_system/translation/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../model/donaition_items.dart';
import '../donation_camigan_screen/donation_campigan_screen.dart';
import 'campigin_vol.dart';

class VolunterCampignScreen extends StatefulWidget {
  const VolunterCampignScreen({Key? key}) : super(key: key);

  @override
  State<VolunterCampignScreen> createState() => _VolunterCampignScreenState();
  // final TextEditingController _searchController = TextEditingController();
}

final TextEditingController _searchController = TextEditingController();

class _VolunterCampignScreenState extends State<VolunterCampignScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: AppColors.primary1,
        title: Center(
            child: Text(
          LocaleKeys.volunteer_cam.tr(),
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
                    Campigin_vol(
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

class SearchFiled extends StatelessWidget {
  const SearchFiled(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey, // <-- Change this
              fontSize: 9.sp,
              fontWeight: FontWeight.w400,
              // fontStyle: FontStyle.normal,
            ),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              //  borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
