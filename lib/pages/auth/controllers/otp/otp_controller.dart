import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  static OtpController get instance => Get.find();
  final otpLength = 6.obs;
  late TextEditingController otpValue;
  final otp = [].obs;
  @override
  void onInit() {
    setControllers();
  }

  void setControllers() {
    otp.value = [];
    for (int i = 0; i < otpLength.value; i++) {
      otp.add(TextEditingController());
    }
  }

  void setOtpValue() {
    otpValue.text = otp.map((textController) {
      return textController.text;
    }).join();
  }
}
