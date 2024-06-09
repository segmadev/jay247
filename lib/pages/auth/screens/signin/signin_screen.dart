import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/signin/signin_controller.dart';
import 'package:jay247/pages/auth/screens/forget_password/foreget_password.dart';
import 'package:jay247/pages/auth/screens/signin/bg_path.dart';
import 'package:jay247/pages/auth/screens/signup/signup_screen.dart';
import 'package:jay247/pages/auth/screens/verify/otp_screen.dart';
import 'package:jay247/pages/transactions/set_pin.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/utills/validators/validations.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/text/auth_text_footer.dart';
import 'package:jay247/widgets/text/buttonText.dart';
import 'package:jay247/widgets/textField/textField.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    return Scaffold(
      body: Stack(children: [
        CustomPaint(
          size: Size(
              double.infinity,
              (AHelperFunctions.screenHeight() / 3) +
                  50.toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: SignInBgPath(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ASizes.defaultSpace, vertical: 150),
          child: TitleP(
            title: AText.welcome,
            paragraph: AText.loginParagrah,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(ASizes.defaultSpace),
            child: Form(
              key: controller.signInFromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ATextFiled(
                    title: AText.email,
                    hintText: AText.emailHint,
                    controller: controller.email,
                    validator: (value) => AValidator.validateEmail(value),
                  ),
                  ATextFiled(
                    title: AText.password,
                    hintText: AText.password,
                    obscureText: true,
                    validator: (value) =>
                        AValidator.validateEmptyText(AText.password, value),
                    controller: controller.password,
                  ),
                  const SizedBox(height: ASizes.defaultSpace),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AButtonText(
                        name: AText.forgetPassword,
                        onTap: () {
                          Get.to(const ForgetPassword());
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: ASizes.defaultSpace),
                  Center(
                      child: RoundButton(
                    name: AText.signin,
                    onPressed: () {
                      controller.signIn();
                    },
                  )),
                  const SizedBox(height: ASizes.spaceBtwItems),
                  AuthTextFooter(
                    text: AText.dontGetCode,
                    buttonText: AText.createAccount,
                    onTap: () {
                      Get.to(const SignUpScreen());
                    },
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
