import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/widgets/text/buttonText.dart';

class AuthTextFooter extends StatelessWidget {
  const AuthTextFooter(
      {super.key, required this.text, required this.buttonText, this.onTap});
  final String text;
  final String buttonText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          AButtonText(
            onTap: onTap ?? () {},
            name: buttonText,
          )
        ],
      ),
    );
  }
}
