import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/screens/preview/page_preview.dart';
import 'package:jay247/pages/auth/screens/switch/switch_theme_button.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class SwitchThemePage extends StatelessWidget {
  const SwitchThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AText.changeThemeTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            SwitchThemeButton(),
            Column(
              children: [
                InkWell(
                    onTap: () {
                      Get.to(APagePreview());
                    },
                    child: AHelperFunctions.displayImage(AAssets.nextIcon)),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: Center(
                      child: Text(
                    AText.changeThemeP,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
