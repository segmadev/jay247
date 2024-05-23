import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:lottie/lottie.dart';

class OtpSuccess extends StatelessWidget {
  const OtpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(children: [
      SizedBox(
          width: MediaQuery.of(context).size.width, // Full Width of Screen
          height: MediaQuery.of(context).size.height, // Full Height of Screen
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
                child: Lottie.asset(AAssets.lottieVerified,
                    width: ASizes.animationIconWith)),
            const SizedBox(height: ASizes.defaultSpace),
            const SizedBox(
              width: 250,
              child: Text(
                "Fortune Ivo ${AText.otpverifiedParagrah}",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: ASizes.defaultSpace * 2),
            RoundButton(
              name: AText.signin,
              onPressed: () {
                Get.to(const SignInScreen());
              },
            ),
          ]))
    ]);
  }
}
