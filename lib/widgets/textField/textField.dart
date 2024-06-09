import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

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
      this.obscureText = false,
      this.suffixIcon,
      this.enabled = true});
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextFormField? textFormField;
  final InputDecoration? textInputDecoration;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    final hideValue = true.obs;
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
            Obx(() => TextFormField(
                  obscureText: hideValue.value ? obscureText : false,
                  controller: controller,
                  initialValue: initialValue,
                  validator: validator,
                  enabled: enabled,
                  decoration: textInputDecoration ??
                      InputDecoration(
                        hintText: hintText,
                        suffixIcon: obscureText
                            ? IconButton(
                                onPressed: () {
                                  hideValue.value = !hideValue.value;
                                },
                                icon: hideValue.value
                                    ? const Icon(Icons.remove_red_eye_outlined)
                                    : const Icon(Icons.remove_red_eye_rounded))
                            : suffixIcon,
                      ),
                ))
      ],
    );
  }
}
