import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/verify/verify_controller.dart';
import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/pages/auth/screens/verify/otp.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/text/auth_text_footer.dart';
import 'package:lottie/lottie.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyController());
    return PageContainer(
      showBack: true,
      children: [
        const SizedBox(height: 50),
        Center(
          child: Lottie.asset(AAssets.lottieSendMessage,
              width: ASizes.animationIconWith),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(height: ASizes.defaultSpace),
              const TitleP(
                gap: ASizes.sm,
                crossAxisAlignment: CrossAxisAlignment.center,
                title: AText.otpAlmost,
                paragraph: "${AText.otpParagrah} +00000877",
              ),
              const SizedBox(height: ASizes.spaceBtwItems * 2),
              OTP(controller: controller.otp),
              const SizedBox(height: ASizes.defaultSpace * 2),
              RoundButton(
                name: AText.verify,
                onPressed: () {
                  controller.verifyEmail();
                  // Get.to(const OtpSuccess());
                },
              ),
              const SizedBox(height: ASizes.sm),
              AuthTextFooter(
                text: AText.dontGetCode,
                onTap: () {
                  controller.resendotp();
                },
                buttonText: AText.reSendOTP,
              ),
              const SizedBox(height: ASizes.lg),
              AuthTextFooter(
                text: "",
                onTap: () {
                  Get.to(const SignInScreen());
                },
                buttonText: AText.signin,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
