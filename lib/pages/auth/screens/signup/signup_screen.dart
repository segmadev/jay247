import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/signup/signup_controller.dart';
import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/pages/auth/screens/verify/otp_screen.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/validators/validations.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/text/auth_text_footer.dart';
import 'package:jay247/widgets/textField/textField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFromKey,
      child: PageContainer(
        children: [
          const SizedBox(height: ASizes.defaultSpace),
          const TitleP(
            title: AText.createAccount,
            paragraph: AText.createAccountParagrah,
          ),
          const SizedBox(height: ASizes.defaultSpace),
          ATextFiled(
            controller: controller.name,
            validator: (value) =>
                AValidator.validateEmptyText(AText.name, value),
            title: AText.name,
            hintText: AText.nameHint,
          ),
          ATextFiled(
            controller: controller.username,
            validator: (value) => AValidator.validateUsername(value),
            title: AText.username,
            hintText: AText.usernameHint,
          ),
          ATextFiled(
            controller: controller.email,
            validator: (value) => AValidator.validateEmail(value),
            title: AText.email,
            hintText: AText.email,
          ),
          ATextFiled(
            controller: controller.phoneNumber,
            validator: (value) => AValidator.validatePhoneNumber(value),
            title: AText.phoneNo,
            hintText: AText.phoneNo,
          ),
          ATextFiled(
            controller: controller.password,
            validator: (value) => AValidator.validatePassword(value),
            title: AText.password,
            hintText: AText.password,
            obscureText: true,
          ),
          const SizedBox(height: ASizes.defaultSpace),
          Center(
            child: Column(
              children: [
                RoundButton(
                  onPressed: () {
                    controller.signup();
                  },
                  width: ASizes.buttonWidthMd,
                  name: AText.createAccount,
                ),
                const SizedBox(height: ASizes.defaultSpace),
                AuthTextFooter(
                  text: AText.haveAnAccount,
                  buttonText: AText.signin,
                  onTap: () {
                    Get.to(const SignInScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
