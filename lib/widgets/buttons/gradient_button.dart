import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Ink(
        decoration: BoxDecoration(
          gradient: AColor.gradinetColor,
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: const Text(
            'OK',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
