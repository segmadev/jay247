import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/utills/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: true,
            child: Container(
              color: AHelperFunctions.isDarkMode(Get.context!)
                  ? const Color.fromARGB(92, 10, 10, 10)
                  : const Color.fromARGB(115, 255, 255, 255),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  AAnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            )));
  }

  static stopLoading() {
    final overlayContext = Get.overlayContext;
    if (overlayContext != null) {
      Navigator.of(overlayContext, rootNavigator: true).pop();
    }
  }
}
