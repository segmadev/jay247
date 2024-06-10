import 'dart:core';
import 'package:jay247/data/repositories/authentication/authentication_repository.dart';
import 'package:jay247/http/auth/auth.dart';
import 'package:jay247/pages/auth/models/verify.dart';
import 'package:jay247/pages/user/models/user.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/network_manager.dart';
import 'package:jay247/utills/local_storage/storage_utility.dart';
import 'package:jay247/utills/popups/full_screen_loader.dart';
import 'package:jay247/utills/popups/snack_bar_pop.dart';
import 'package:jay247/widgets/pages/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  static VerifyController get instance => Get.find();

  // form varibles
  final otp = TextEditingController();
  final length = 6;
  GlobalKey<FormState> verifyFromKey = GlobalKey<FormState>();

  Future<void> resendotp() async {
    try {
      AFullScreenLoader.openLoadingDialog(
          AText.processInfo, AAssets.docerAnimation);
      // check inetrnet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      if (storage.readData("currentUser") == null) {
        // show error message
        Get.snackbar('Oh Snap!', "Error validating you.");
        return;
      }
      final currentUser = User.fromJson(storage.readData("currentUser"));
      var response = await AuthApi.resendotp(currentUser.email);
      AFullScreenLoader.stopLoading();
      ASnackBar().successSackBar(title: "Sent!", message: response['message']);
    } catch (e) {
      AFullScreenLoader.stopLoading();
      ASnackBar().dangerSackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  Future<void> verifyEmail() async {
    try {
      // start loading
      AFullScreenLoader.openLoadingDialog(
          AText.processInfo, AAssets.docerAnimation);
      // check otp length
      if (otp.text == "" || otp.text.length < length) {
        throw "Enter the $length-digit number";
      }
      // check inetrnet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      var storage = ALocalStorage();
      if (storage.readData("currentUser") == null) {
        // show error message
        ASnackBar()
            .dangerSackBar(title: "Oh Snap!", message: "Error validating you");
        return;
      }
      final currentUser = User.fromJson(storage.readData("currentUser"));
      // Verify user through API
      VerifyEmail data =
          VerifyEmail(email: currentUser.email, code: otp.value.text.trim());
      var response = await AuthApi.verifyEmail(data);
      var user = response['data']['user'];
      // save auth user data in localStorage
      await storage.saveData("currentUser", user);
      await storage.saveData("token", response['data']['token']);
      // show success message
      ASnackBar().successSackBar(title: "Great!", message: response['message']);
      // stop loading
      AFullScreenLoader.stopLoading();
      // redirect
      // AuthenticationRepository.instance.screenRedirect();
      ASnackBar().successSackBar(
          title: "Great!", message: "Task Created Successfully");
      Get.to(() => SuccessSCreen(
          text: "Your Account Verified Successfully.",
          animation: AAssets.successAnimation));
    } catch (e) {
      // handle error
      AFullScreenLoader.stopLoading();
      ASnackBar().dangerSackBar(title: "Oh Snap!", message: e.toString());
      print(e.toString());
    }
  }
}
