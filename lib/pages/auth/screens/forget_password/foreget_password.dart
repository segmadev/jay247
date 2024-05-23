import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/screens/forget_password/create_new_password.dart';
import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/text/auth_text_footer.dart';
import 'package:jay247/widgets/textField/textField.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        showBack: true,
        children: [
          const SizedBox(
            width: 300,
            child: TitleP(
              crossAxisAlignment: CrossAxisAlignment.center,
              title: AText.forgetpassword,
              paragraph: AText.forgetPasswordParagraph,
              paragraphTextAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: ASizes.spacerHeight),
          const ATextFiled(
            title: AText.email,
            hintText: AText.emailHint,
          ),
          const SizedBox(height: ASizes.spacerHeight),
          RoundButton(
            onPressed: () {
              Get.to(const CreateNewPassword());
            },
            name: AText.send,
          ),
          const SizedBox(height: ASizes.defaultSpace),
          AuthTextFooter(
            text: AText.rememberPassword,
            buttonText: AText.signin,
            onTap: () {
              Get.to(const SignInScreen());
            },
          )
        ]);
  }
}
