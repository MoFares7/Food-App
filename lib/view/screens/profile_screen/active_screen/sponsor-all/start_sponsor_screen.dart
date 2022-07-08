// ignore_for_file: non_constant_identifier_names, duplicate_ignore
import 'package:ataa_charity_system/configs/size.dart';
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/view/widgets/main_buttom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../../../translation/locale_keys.g.dart';

class StartSponsorScreen extends StatefulWidget {
  const StartSponsorScreen({Key? key}) : super(key: key);

  @override
  State<StartSponsorScreen> createState() => _SponsoShipState();
}

class _SponsoShipState extends State<StartSponsorScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _first_Name_Controller = TextEditingController();
  final TextEditingController _last_Name_Controller = TextEditingController();
  final TextEditingController _phone_Number_Controller =
      TextEditingController();
  final TextEditingController _jopController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _national_Id_Controller = TextEditingController();
  final TextEditingController _first_name_spo_Controller =
      TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _last_name_spo_Controller =
      TextEditingController();
  final formkey = GlobalKey<FormState>();
  String select = " مليون 3 - 4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary1,
        title: Center(
          child: Text(
            LocaleKeys.sponsorship.tr(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defultPadding, vertical: defultPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formkey,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.sponsor_info1.tr(),
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
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
                    hintText: LocaleKeys.jop.tr(),
                    controller: _jopController,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'الحقل مطلوب'),
                      EmailValidator(errorText: 'Enter Valid Email')
                    ]),
                  ),
                  const SizedBox(
                    height: defultPadding * 2,
                  ),
                  TextFormEditing1(
                    hintText: LocaleKeys.national_id.tr(),
                    controller: _national_Id_Controller,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'الحقل مطلوب'),
                      EmailValidator(errorText: 'Enter Valid National Number')
                    ]),
                  ),
                  const SizedBox(
                    height: defultPadding * 2,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defultPadding) *
                            2,
                    child: Text(LocaleKeys.annual_income.tr()),
                  ),
                  const SizedBox(
                    height: defultPadding,
                  ),
                  const DropdownMenuItem(child: DropDowmList()),
                  const SizedBox(
                    height: defultPadding * 2,
                  ),
                  Text(
                    LocaleKeys.sponsored_Information.tr(),
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: defultPadding),
                  TextFormEditing1(
                    hintText: LocaleKeys.first_name.tr(),
                    controller: _first_name_spo_Controller,
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
                    controller: _last_name_spo_Controller,
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'الحقل مطلوب'),
                      EmailValidator(errorText: 'Enter Valid Last Name')
                    ]),
                  ),
                  const SizedBox(
                    height: defultPadding * 2,
                  ),
                  MainButtom(
                      color: AppColors.primary1,
                      title: 'اكفل الآن',
                      textcolor: AppColors.textLigth,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      })
                ]),
          ),
        ),
      ),
    );
  }
}

class TextFormEditing1 extends StatelessWidget {
  const TextFormEditing1({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final FieldValidator validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Required';
          }
          return null;
        },
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.scaffoldColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey, // <-- Change this
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
            // fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}

class DropDowmList extends StatefulWidget {
  const DropDowmList({Key? key}) : super(key: key);

  @override
  State<DropDowmList> createState() => _DropDowmListState();
}

class _DropDowmListState extends State<DropDowmList> {
  // ignore: prefer_typing_uninitialized_variables
  var _selectedValue = "3 - 4 مليون";
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                  value: _selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue!;
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
    const DropdownMenuItem(child: Text("3 - 4 مليون "), value: "3 - 4 مليون"),
    const DropdownMenuItem(child: Text("4 - 6 مليون"), value: "4 - 6 مليون"),
    const DropdownMenuItem(child: Text(" 6 - 8 مليون"), value: "6 - 8 مليون "),
    const DropdownMenuItem(child: Text("أكـثـر "), value: "أكـثـر"),
  ];
  return menuItems;
}
