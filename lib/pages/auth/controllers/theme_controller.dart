import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class ThemeController extends GetxController {
  static ThemeController get instance => Get.find();
  // initializing with the current theme of the device
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;

  // function to switch between themes
  void switchTheme() {
    print(currentTheme.value.toString());
    currentTheme.value = currentTheme.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}
