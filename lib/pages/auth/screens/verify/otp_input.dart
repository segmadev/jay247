import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/otp/otp_controller.dart';
import 'package:jay247/utills/consts/size.dart';

class OtpInput extends StatelessWidget {
  const OtpInput(
      {super.key, this.controller, this.isLast = false, this.isFirst = false});
  final TextEditingController? controller;
  final bool isLast;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OtpController());

    return SizedBox(
      height: ASizes.otpInputFieldHeight,
      width: ASizes.otpInputFieldWidth,
      child: TextFormField(
        controller: controller,
        onSaved: (pin1) {},
        onChanged: (value) {
          if (value.length == 1 && !isLast) FocusScope.of(context).nextFocus();
          if (value.isEmpty && !isFirst) FocusScope.of(context).previousFocus();
          otpController.setOtpValue();
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          filled: false,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
        ),
      ),
    );
  }
}
