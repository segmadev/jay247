import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';

class AButtonText extends StatelessWidget {
  const AButtonText({super.key, required this.name, this.onTap});
  final String name;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Text(
        " $name",
        style: const TextStyle(
            color: AColor.lprimary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
