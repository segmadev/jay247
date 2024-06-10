import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/otp/otp_controller.dart';
import 'package:jay247/pages/auth/screens/verify/otp_input.dart';

class OTP extends StatelessWidget {
  const OTP({super.key, this.length = 6, required this.controller});
  final int length;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OtpController());
    otpController.otpLength.value = length;
    otpController.setControllers();
    otpController.otpValue = controller;
    return Center(
      child: SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: otpController.otp.map((textController) {
            final index = otpController.otp.indexOf(textController);
            return OtpInput(
              controller: textController,
              isFirst: index == 0,
              isLast: index == otpController.otpLength.value - 1,
            );
          }).toList(),
        ),
      ),
    );
  }
}
