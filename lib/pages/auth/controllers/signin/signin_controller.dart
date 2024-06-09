import 'dart:core';
import 'package:jay247/data/repositories/authentication/authentication_repository.dart';
import 'package:jay247/http/auth/auth.dart';
import 'package:jay247/pages/auth/models/siginin.dart';
import 'package:jay247/pages/user/models/user.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/network_manager.dart';
import 'package:jay247/utills/local_storage/storage_utility.dart';
import 'package:jay247/utills/popups/full_screen_loader.dart';
import 'package:jay247/utills/popups/snack_bar_pop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get instance => Get.find();

  // form varibles
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final signAsUser = true.obs;
  GlobalKey<FormState> signInFromKey = GlobalKey<FormState>();

  Future<void> signIn() async {
    try {
      // start loading
      AFullScreenLoader.openLoadingDialog(
          AText.processInfo, AAssets.docerAnimation);
      // check inetrnet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) throw "";
      ;
      // from validation
      if (!signInFromKey.currentState!.validate())
        throw "Fill all required fields";
      // Login user through API
      SignIn data = SignIn(
          email: email.text.trim().toLowerCase(),
          password: password.text.trim());
      var response = await AuthApi.signIn(data);
      var user = response['data']['user'];
      AFullScreenLoader.stopLoading();
      // save auth user data in localStorage
      var storage = ALocalStorage();
      await storage.removeData("currentUser");
      await storage.removeData("token");
      await storage.saveData("currentUser", user);
      if (response['data']['token'] != null) {
        await storage.saveData("token", response['data']['token']);
      }
      // show success message
      ASnackBar().successSackBar(title: "Great!", message: response['message']);
      // stop loading
      AFullScreenLoader.stopLoading();
      // redirect
      await AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // handle error
      AFullScreenLoader.stopLoading();
      ASnackBar().dangerSackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}


// var Cuser = User(
      //         avatar: "",
      //         email: email.text.trim(),
      //         id: "",
      //         isAdmin: false,
      //         username: "",
      //         isDeleted: false,
      //         isInfluencer: false,
      //         isSuspended: false,
      //         isVerified: false)
      //     .toJson();