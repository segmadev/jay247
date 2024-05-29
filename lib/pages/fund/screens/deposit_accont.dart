import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/textField/textField.dart';

class DepositAccount extends StatelessWidget {
  const DepositAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ATextFiled(
            title: AText.bankName,
            hintText: AText.bankName,
            initialValue: "KUDA BANK",
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(AIcons.copy))),
        ATextFiled(
            title: AText.acctNo,
            hintText: AText.acctNo,
            initialValue: "2024391454",
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(AIcons.copy))),
        ATextFiled(
            title: AText.acctName,
            hintText: AText.acctName,
            initialValue: "JAY247 EXCHANGE/ FORTUNE IVO",
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(AIcons.copy))),
      ],
    );
  }
}
