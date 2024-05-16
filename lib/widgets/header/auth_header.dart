import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: ASizes.AuthLogoHeight,
        ),
        Image.asset(AHelperFunctions.getLogoUrl(context)),
      ],
    );
  }
}
