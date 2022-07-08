
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../configs/size.dart';
import '../../../configs/theme.dart';
import '../../../model/donaition_items.dart';
import '../../widgets/email_filed.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({
    Key? key,
    required this.campaign,
  }) : super(key: key);
  final Campaign campaign;
  @override
  Widget build(BuildContext context) {
    final TextEditingController _donationcontrol = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          height: defultPadding,
        ),
        Expanded(
          flex: 1,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: size.height / 1.1,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        //    crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: size.height / 2.5,
                              //width: size.width / 1.1,
                              decoration: BoxDecoration(
                                  color: AppColors.cardDark,
                                  image: DecorationImage(
                                      image: NetworkImage(campaign.imageUrll),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                            ),
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding * 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: AppColors.primary1,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Center(
                                      child: Text(
                                        "حملة تبرع",
                                        style: TextStyle(
                                            color: AppColors.textLigth,
                                            fontSize: 12),
                                      ),
                                    )),
                                Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: AppColors.primary1,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        campaign.type,
                                        style: const TextStyle(
                                            color: AppColors.textLigth,
                                            fontSize: 12),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding * 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    // width: 160,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        campaign.title_donation,
                                        style: const TextStyle(
                                            color: AppColors.primary1,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                                Container(
                                    // width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Center(
                                      child: Text(
                                        '120 ذوي احتياج',
                                        style: TextStyle(
                                            color: AppColors.secondary,
                                            fontSize: 12),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    campaign.subTitle,
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(
                                      fontSize: 11.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Container(
                            color: AppColors.primary1,
                            height: 60,
                            width: size.width / 1.1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defultPadding,
                                  vertical: defultPadding),
                              child: Text(
                                'رقم الحالة : ${campaign.id_donation}',
                                style: const TextStyle(
                                    color: AppColors.textLigth,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'تم جمع',
                                  style: TextStyle(
                                      color: AppColors.primary1, fontSize: 12),
                                ),
                                Text(
                                  'المبلغ المتبقي ',
                                  style: TextStyle(
                                      color: AppColors.primary1, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  campaign.cost,
                                  style: const TextStyle(
                                      color: AppColors.textDark, fontSize: 13),
                                ),
                                Text(
                                  campaign.remember,
                                  style: const TextStyle(
                                      color: AppColors.textDark, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defultPadding,
                    ),
                    Container(
                      height: size.height / 4.4,
                      width: size.width / 1.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const Text(
                            "قيمة التبرع  ",
                            style: TextStyle(
                                color: AppColors.primary1, fontSize: 14),
                          ),
                          const Text(
                            "  باليرة السورية ",
                            style: TextStyle(
                                color: AppColors.textDark, fontSize: 14),
                          ),
                          const SizedBox(
                            height: defultPadding,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defultPadding * 2),
                            child: TextFormEditing(
                                hintText: "التبرع باليرة",
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required'),
                                  EmailValidator(
                                      errorText: 'Enter Valid Donation')
                                ]),
                                controller: _donationcontrol),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: defultPadding,
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
