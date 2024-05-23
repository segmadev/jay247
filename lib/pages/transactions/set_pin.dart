import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/screens/verify/otp_input.dart';
import 'package:jay247/pages/transactions/keyboard.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/pages/success_page.dart';
import 'package:jay247/widgets/text/TitleP.dart';

class SetPin extends StatelessWidget {
  const SetPin({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(children: [
      const SizedBox(height: ASizes.lg),
      TitleP(
        title: AText.setPin,
        titleStyle: Theme.of(context).textTheme.headlineMedium,
        paragraph: AText.setPinParagraph,
        gap: ASizes.sm,
      ),
      const SizedBox(height: 50),
      const Center(
        child: SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OtpInput(),
              OtpInput(),
              OtpInput(),
              OtpInput(),
            ],
          ),
        ),
      ),
      const SizedBox(height: 200),
      const NumberKeybaord(),
      const SizedBox(height: ASizes.defaultSpace),
      Center(
        child: RoundButton(
          name: "Proceed",
          onPressed: () {
            Get.to(const SuccessSCreen(
              animation: AAssets.lottieVerified,
              text: AText.pinSuccess,
              heading: "",
            ));
          },
        ),
      )
    ]);
  }
}
