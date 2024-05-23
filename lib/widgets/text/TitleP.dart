import 'package:flutter/material.dart';

class TitleP extends StatelessWidget {
  const TitleP(
      {super.key,
      required this.title,
      required this.paragraph,
      this.crossAxisAlignment,
      this.gap = 0.0,
      this.paragraphStyle,
      this.titleStyle, this.paragraphTextAlign, this.titleTextAlign});
  final String title;
  final String paragraph;
  final CrossAxisAlignment? crossAxisAlignment;
  final double gap;
  final TextStyle? paragraphStyle;
  final TextStyle? titleStyle;
  final TextAlign? paragraphTextAlign;
  final TextAlign? titleTextAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        Text(title,
            textAlign: titleTextAlign,
            style: titleStyle ?? Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: gap),
        Text(
          paragraph,
          style: paragraphStyle ?? Theme.of(context).textTheme.bodyMedium,
          textAlign: paragraphTextAlign,
        )
      ],
    );
  }
}
