import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          width: double.infinity,
          height: 1,
          color: AColor.black.withOpacity(0.2)),
    );
  }
}
