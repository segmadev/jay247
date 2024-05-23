import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jay247/utills/consts/size.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ASizes.otpInputFieldHeight,
      width: ASizes.otpInputFieldWidth,
      child: TextFormField(
        onSaved: (pin1) {},
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
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
