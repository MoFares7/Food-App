
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:flutter/material.dart';

import '../../../configs/size.dart';
import '../../widgets/main_buttom.dart';

enum PaymentMethod { fatora, paypal }

class PaymentWay extends StatefulWidget {
  const PaymentWay({Key? key}) : super(key: key);

  @override
  State<PaymentWay> createState() => _PaymentWayState();
}

class _PaymentWayState extends State<PaymentWay> {
  PaymentMethod _paymentMethod = PaymentMethod.fatora;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            (PaymentMethod value) {
              setState(() {
                _paymentMethod = value;
              });
            };
          },
          child: ListTile(
            title: const Text('فاتورة'),
            leading: Radio<PaymentMethod>(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.primary1),
              focusColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.primary1),
              value: PaymentMethod.fatora,
              groupValue: _paymentMethod,
              onChanged: (value) {
                setState(() {
                  _paymentMethod = value!;
                });
              },
            ),
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () {
            (PaymentMethod value) {
              setState(() {
                _paymentMethod = value;
              });
            };
          },
          child: ListTile(
            title: const Text('paypal'),
            leading: Radio<PaymentMethod>(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.primary1),
              focusColor: MaterialStateColor.resolveWith(
                  (states) => AppColors.primary1),
              value: PaymentMethod.paypal,
              groupValue: _paymentMethod,
              onChanged: (value) {
                setState(() {
                  _paymentMethod = value!;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: defultPadding,
        ),
        MainButtom(
            color: AppColors.primary1,
            textcolor: AppColors.textLigth,
            title: 'اختيار',
            onPressed: () {})
      ],
    );
  }
}
