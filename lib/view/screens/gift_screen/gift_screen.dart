// ignore_for_file: non_constant_identifier_names
import 'package:ataa_charity_system/translation/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../widgets/main_buttom.dart';
import 'payment_way_screen.dart';

enum PaymentMethod { fatora, paypal }

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);

  static const String routeName = 'Gift_screen';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const GiftScreen(),
    );
  }

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary1,
        title: Center(
          child: Text(
            LocaleKeys.gift.tr(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defultPadding * 2),
              child: Text(
                'هدية عطاء',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defultPadding * 2),
              child: Center(
                child: Text(
                  'خدمة لتقديم التبرعات عن الغير كهدية للأهل والأصدقاء, في مختلف المناسبات ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: defultPadding,
            ),
            AspectRatio(
                aspectRatio: 4 / 2,
                child: SvgPicture.asset('assets/icons/gift.svg')),
            const SizedBox(
              height: defultPadding * 2,
            ),
            MainButtom(
                color: AppColors.primary1,
                textcolor: AppColors.textLigth,
                title: 'أرسل هدية لمن تحب',
                onPressed: () {
                  GitButtomSheet(context);
                })
          ],
        ),
      ),
    );
  }

  Future<dynamic> GitButtomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: defultPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  ' إهداء التبرع ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defultPadding * 2),
                      child: Text(
                        'اسم المهدي',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: defultPadding,
                ),
                TextFormEditing2(
                  hintText: 'الأسم',
                  inputType: TextInputType.name,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'الحقل مطلوب'),
                    EmailValidator(errorText: 'Enter Valid Name')
                  ]),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defultPadding * 2),
                      child: Text(
                        'اسم المهدى إليه',
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: defultPadding,
                ),
                TextFormEditing2(
                  hintText: 'اسم المهدى إليه',
                  inputType: TextInputType.name,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'الحقل مطلوب'),
                    EmailValidator(errorText: 'Enter Valid Name')
                  ]),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defultPadding * 2),
                      child: Text(
                        '  رقم هاتف المهدى إليه',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: defultPadding,
                ),
                TextFormEditing2(
                  hintText: ' +963xxxxxxxx ',
                  inputType: TextInputType.phone,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'الحقل مطلوب'),
                    EmailValidator(errorText: 'Enter Valid Phone Number ')
                  ]),
                ),
                const SizedBox(
                  height: defultPadding,
                ),
                MainButtom(
                    color: AppColors.primary1,
                    textcolor: AppColors.textLigth,
                    title: 'ارسال الهدية الآن',
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          builder: (context) {
                            return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defultPadding),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '  اختار طريقة الدفع ',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: defultPadding,
                                      ),
                                      const Divider(),
                                      const PaymentWay(),
                                    ]));
                          });
                    })
              ],
            ),
          );
        });
  }
}

class TextFormEditing2 extends StatelessWidget {
  const TextFormEditing2({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.inputType,
  }) : super(key: key);

  final String hintText;
  final FieldValidator validator;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defultPadding,
      ),
      child: SizedBox(
        height: 8.h,
        width: 80.w,
        child: Center(
          child: TextFormField(
            // maxLength: 10,

            validator: (value) {
              if (value!.isEmpty) {
                return 'Required';
              }
              return null;
            },
            keyboardType: inputType,
            autofillHints: const [AutofillHints.email],
            decoration: InputDecoration(
                // filled: true,
                //  fillColor: AppColors.scaffoldColor,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey, // <-- Change this
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w400,
                  // fontStyle: FontStyle.normal,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  //  borderSide: BorderSide.none,
                )),
          ),
        ),
      ),
    );
  }
}
