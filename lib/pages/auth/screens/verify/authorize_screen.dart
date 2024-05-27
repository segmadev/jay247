import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/screens/signin/signin_screen.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/navigation_menu.dart';
import 'package:jay247/widgets/profile/profile.dart';
import 'package:jay247/widgets/text/TitleP.dart';
import 'package:jay247/widgets/text/auth_text_footer.dart';
import 'package:jay247/widgets/textField/textField.dart';

class AuthorizeScreen extends StatelessWidget {
  const AuthorizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: ASizes.imageCarouselHeight,
              width: ASizes.animationIconWith,
              child: AProfile.profileAvatar),
          const SizedBox(height: ASizes.spaceBtwItems),
          const TitleP(
            title: AText.welcomeBack,
            paragraph: "",
          ),
          const SizedBox(height: ASizes.spacerHeight),
          const ATextFiled(
            title: AText.password,
            hintText: AText.password,
            obscureText: true,
          ),
          const SizedBox(height: ASizes.defaultSpace),
          AuthTextFooter(
            text: "",
            buttonText: AText.signInToAnother,
            onTap: () {
              Get.to(const SignInScreen());
            },
          ),
          const SizedBox(height: ASizes.spacerHeight),
          Center(
            child: SizedBox(
              width: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                    onPressed: () {
                      Get.to(NavigationMenu());
                    },
                    name: AText.signin,
                  ),
                  RoundButton(
                    isOutlined: true,
                    child: Icon(AIcons.fingerPrintOutlined,
                        color: AHelperFunctions.isDarkMode(context)
                            ? AColor.dprimary
                            : AColor.lprimary),
                  ),
                ],
              ),
            ),
          ),
        ]);
  }
}
