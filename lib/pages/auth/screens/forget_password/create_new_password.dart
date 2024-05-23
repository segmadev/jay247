import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/pages/success_page.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/textField/textField.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      showBack: true,
      children: [
        const TitleP(
          title: AText.createPassword,
          paragraph: AText.createPasswordParagraph,
          crossAxisAlignment: CrossAxisAlignment.center,
          paragraphTextAlign: TextAlign.center,
        ),
        const SizedBox(
          height: ASizes.spacerHeight,
        ),
        const ATextFiled(
          title: AText.password,
          hintText: AText.password,
          obscureText: true,
        ),
        const ATextFiled(
          title: AText.confirmPassword,
          hintText: AText.confirmPassword,
          obscureText: true,
        ),
        const SizedBox(height: ASizes.defaultSpace),
        RoundButton(
          name: AText.save,
          onPressed: () {
            Get.to(const SuccessSCreen(
              animation: AAssets.lottieVerified,
              heading: AText.passwordChanged,
              text: AText.passwordChangedParagraph,
            ));
          },
        ),
      ],
    );
  }
}
