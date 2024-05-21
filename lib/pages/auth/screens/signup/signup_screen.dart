import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/textField/textField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hidePassword = true.obs;
    return Scaffold(
      body: SafeArea(
        child: PageContainer(
          children: [
            const SizedBox(height: ASizes.defaultSpace),
            const TitleP(
              title: AText.createAccount,
              paragraph: AText.createAccountParagrah,
            ),
            const SizedBox(height: ASizes.defaultSpace),
            const ATextFiled(
              title: AText.name,
              hintText: AText.nameHint,
            ),
            const ATextFiled(
              title: AText.username,
              hintText: AText.usernameHint,
            ),
            const ATextFiled(
              title: AText.email,
              hintText: AText.email,
            ),
            const ATextFiled(
              title: AText.phoneNo,
              hintText: AText.phoneNo,
            ),
            ATextFiled(
              title: AText.password,
              hintText: AText.password,
              obscureText: true,
              textInputDecoration: InputDecoration(
                  hintText: AText.password,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: hidePassword.value
                          ? const Icon(Icons.remove_red_eye_outlined)
                          : const Icon(Icons.remove_red_eye_outlined))),
            ),
            const SizedBox(height: ASizes.defaultSpace),
            Center(
              child: Column(
                children: [
                  const RoundButton(
                    width: ASizes.buttonWidthMd,
                    name: AText.createAccount,
                  ),
                  const SizedBox(height: ASizes.defaultSpace),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          AText.haveAnAccount,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            AText.signin,
                            style: TextStyle(color: AColor.lprimary),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
