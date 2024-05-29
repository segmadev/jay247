import 'package:flutter/material.dart';
import 'package:jay247/widgets/balance/balance_card.dart';

class BalanceSlider extends StatelessWidget {
  const BalanceSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BalanceCard(
            contryCode: "NG",
            currency: "NGN",
          ),
          SizedBox(width: 10),
          BalanceCard(
            contryCode: "KE",
            currency: "KSH",
          ),
        ],
      ),
    );
  }
}
