// ignore_for_file: non_constant_identifier_names
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../translation/locale_keys.g.dart';
import '../../widgets/main_buttom.dart';
import '../profile_screen/active_screen/sponsor-all/start_sponsor_screen.dart';

class VolunteerInfoScreen extends StatelessWidget {
  VolunteerInfoScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _first_Name_Controller = TextEditingController();
  final TextEditingController _last_Name_Controller = TextEditingController();
  final TextEditingController _phone_Number_Controller =
      TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _experinceController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppBar(
          backgroundColor: AppColors.primary1,
          automaticallyImplyLeading: false,
          title: const Center(
              child: Text(
            ' التطوع ',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defultPadding, vertical: defultPadding),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'معلومات المـتـطـوع ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: defultPadding),
                    TextFormEditing1(
                      hintText: LocaleKeys.first_name.tr(),
                      controller: _first_Name_Controller,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid First Name')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: LocaleKeys.last_name.tr(),
                      controller: _last_Name_Controller,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Last Name')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: LocaleKeys.place_of_res.tr(),
                      controller: _locationController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Location')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: "العمر",
                      controller: _ageController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Email')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: LocaleKeys.phone_number.tr(),
                      controller: _phone_Number_Controller,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Phone Number')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: LocaleKeys.email.tr(),
                      controller: _emailController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Email')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    TextFormEditing1(
                      hintText: " شهادة الخبرة",
                      controller: _experinceController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'الحقل مطلوب'),
                        EmailValidator(errorText: 'Enter Valid Email')
                      ]),
                    ),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defultPadding * 1.5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'سنوات الخبرة',
                          style: TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: defultPadding,
                    ),
                    const DropdownMenuItem(child: DropDowmList()),
                    const SizedBox(
                      height: defultPadding * 2,
                    ),
                    MainButtom(
                        color: AppColors.primary1,
                        title: 'تـطـوع الآن',
                        textcolor: AppColors.textLigth,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        })
                  ]),
            ),
          ),
        ));
  }
}

class DropDowmList extends StatefulWidget {
  const DropDowmList({Key? key}) : super(key: key);

  @override
  State<DropDowmList> createState() => _DropDowmListState();
}

class _DropDowmListState extends State<DropDowmList> {
  String? selectedValue = 'سنة';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: defultPadding, vertical: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Form(
          key: _dropdownFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                  ),
                  validator: (value) =>
                      value == null ? "Select a category" : null,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems),
            ],
          )),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("سنة"), value: "سنة"),
    const DropdownMenuItem(child: Text("سـنـتـيـن"), value: "سـنـتـيـن"),
    const DropdownMenuItem(
        child: Text("ثـلاثـة سـنـوات"), value: "ثـلاثـة سـنـوات"),
    const DropdownMenuItem(child: Text("أكـثـر "), value: "أكـثـر"),
  ];
  return menuItems;
}
