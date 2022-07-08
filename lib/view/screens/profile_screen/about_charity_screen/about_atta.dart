
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../../configs/size.dart';
import '../../../../translation/locale_keys.g.dart';

class AboutAtta extends StatelessWidget {
  const AboutAtta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppBar(
          backgroundColor: AppColors.primary1,
          automaticallyImplyLeading: false,
          title: Center(
              child: Text(
            LocaleKeys.about_ataa_profile.tr(),
            style: const TextStyle(color: Colors.white),
          )),
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defultPadding, vertical: defultPadding / 2),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
//crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'من نحن ',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.primary1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding / 2,
                      ),
                      Text(
                        'نحن جمعية خيرية ذات نفع عام بشخصية اعتبارية مستقلة تتمتع بالأهلية الكاملة , وهي تعنى بشؤون ذوي الاحتياج ومن في حكمهم في سوريا  ',
                        style: TextStyle(color: Colors.black, fontSize: 10.sp),
                      ),
                      const SizedBox(
                        height: defultPadding / 2,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'التأسيس  ',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding / 2,
                      ),
                      Text(
                        'إحساساً من السوريين بأهمية رعاية ذوي الاحتياجات الخاصة, ورغبة منهم بتنظيم تلك الرعاية عن طريق إنشاء جمعية تعنى بهم وبشؤونهم, وبعد الرفع إلى وزارة الشؤون الإجتماعية صدر الترخيص للجمعية بالرقم 590 وعقد المجلس التأسيسي للجمعية بتاريخ 20/12/2022',
                        style: TextStyle(color: Colors.black, fontSize: 10.sp),
                      ),
                      const SizedBox(
                        height: defultPadding,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'رؤية عطاء  ',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              height: 35.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: AppColors.cardLight,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defultPadding,
                                    horizontal: defultPadding),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/see.svg',
                                      height: 5.h,
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: defultPadding,
                                    ),
                                    Text(
                                      'الرؤية',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 10.sp),
                                    ),
                                    const SizedBox(
                                      height: defultPadding,
                                    ),
                                    Center(
                                      child: Text(
                                        'التميز في بناء شخصية ذوي الاحتياج وتمكينه ودعم أسرته',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 8.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: defultPadding,
                          ),
                          Expanded(
                            child: Container(
                              height: 35.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: AppColors.cardLight,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defultPadding,
                                    horizontal: defultPadding),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/goal.svg',
                                      height: 5.h,
                                      width: 50,
                                    ),
                                    const SizedBox(
                                      height: defultPadding,
                                    ),
                                    Text(
                                      'الرسالة',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: defultPadding / 2,
                                    ),
                                    Text(
                                      '  تمكين ذوي الاحتياج ودعم أسرته وفق أفضل الممارسات من خلال برامج نوعية وشراكات مجتمعية وتقنيات حديثة للمساهمة في تحقيق الاستقرار في المجتمع ',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 8.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: defultPadding,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'أهداف عطاء  ',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: defultPadding,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.cardLight,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  // height: 170,
                                  // width: 200.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardLight,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: defultPadding,
                                        horizontal: defultPadding),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/signal.svg',
                                          height: 40,
                                          width: 40,
                                          color: AppColors.primary1,
                                        ),
                                        const SizedBox(
                                          height: defultPadding,
                                        ),
                                        Text(
                                          'المساهمة في تحسين حياة اليتيم وأسرته وتمكينه ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  // height: 170,
                                  //  width: 200.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardLight,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: defultPadding,
                                        horizontal: defultPadding),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/star.svg',
                                          height: 40,
                                          width: 40,
                                          color: AppColors.primary1,
                                        ),
                                        const SizedBox(height: defultPadding),
                                        Text(
                                          '   صناعة نماذج من ذوي الاحتياج فاعلة ومؤثرة في المجتمع ',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 8.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //   height: 170,
                                  //  width: 200.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardLight,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: defultPadding,
                                        horizontal: defultPadding),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/write.svg',
                                          height: 40,
                                          width: 40,
                                          color: AppColors.primary1,
                                        ),
                                        const SizedBox(
                                          height: defultPadding,
                                        ),
                                        Text(
                                          'تصميم مبادرات نوعية ومبتكرة في تمكين المستفيدين',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defultPadding,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  //  height: 170,
                                  //  width: 200.w,
                                  decoration: BoxDecoration(
                                    color: AppColors.cardLight,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: defultPadding,
                                        horizontal: defultPadding),
                                    child: Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/loves.svg',
                                          height: 40,
                                          width: 40,
                                          color: AppColors.primary1,
                                        ),
                                        const SizedBox(
                                          height: defultPadding,
                                        ),
                                        Text(
                                          ' التكامل الاستراتيجي مع كافة الأطراف ذات العلاقة ',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 8.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                      )
                    ]),
              );
            }));
  }
}
