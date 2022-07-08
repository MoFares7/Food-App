// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../configs/size.dart';
import '../../configs/theme.dart';

class PasswordFormFiled extends StatefulWidget {
  const PasswordFormFiled(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.icon,
      required this.validator})
      : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final IconData icon;
  final FieldValidator validator;

  @override
  State<PasswordFormFiled> createState() => _PasswordFormFiledState();
}

bool _isPasswordVision = true;

class _PasswordFormFiledState extends State<PasswordFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _isPasswordVision,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Required';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: defultPadding * 0.4),
              child: IconButton(
                icon: Icon(
                  _isPasswordVision ? Icons.visibility : Icons.visibility_off,
                  size: 22,
                  color: AppColors.textDark.withOpacity(0.6),
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVision = !_isPasswordVision;
                  });
                },
              ),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: Colors.grey, // <-- Change this
              fontSize: 9.sp,
              fontWeight: FontWeight.w400,
              // fontStyle: FontStyle.normal,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              //  borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
