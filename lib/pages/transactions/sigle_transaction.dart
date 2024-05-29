import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/widgets/containers/line_divider.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class SingleTransaction extends StatelessWidget {
  const SingleTransaction({super.key, this.showDivider = true});
  final bool showDivider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  ACircleIcon(
                    icon: AIcons.debit,
                    size: 40,
                    backgoundColor: AColor.danger.withOpacity(0.2),
                    showShadow: false,
                    iconColor: AColor.danger,
                  ),
                  const SizedBox(width: ASizes.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "USD WALLET",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        "Sun, 28 Apr 2024 12:23 PM",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Text("-N200,000"),
          ],
        ),
        showDivider ? const LineDivider() : const SizedBox(),
      ],
    );
  }
}
