import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/widgets/textField/textField.dart';

class CopyTextField extends StatelessWidget {
  const CopyTextField({super.key, this.title, this.value});
  final title;
  final value;
  @override
  Widget build(BuildContext context) {
    return ATextFiled(
      title: title,
      initialValue: value,
      enabled: false,
      suffixIcon: IconButton(onPressed: () {}, icon: const Icon(AIcons.copy)),
    );
  }
}
