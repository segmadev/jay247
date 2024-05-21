import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/size.dart';

class ATextFiled extends StatelessWidget {
  const ATextFiled(
      {super.key,
      required this.title,
      this.hintText,
      this.controller,
      this.initialValue,
      this.validator,
      this.textFormField,
      this.textInputDecoration,
      this.obscureText = false});
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextFormField? textFormField;
  final InputDecoration? textInputDecoration;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: ASizes.spaceBtwInputFields),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: ASizes.sm),
        textFormField ??
            TextFormField(
              obscureText: obscureText,
              controller: controller,
              initialValue: initialValue,
              validator: validator,
              decoration: textInputDecoration ??
                  InputDecoration(
                    hintText: hintText,
                  ),
            )
      ],
    );
  }
}
