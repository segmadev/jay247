import 'package:flutter/material.dart';
import 'package:jay247/pages/transfer/screens/currency_options.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/card.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';
import 'package:jay247/widgets/text/buttonText.dart';
import 'package:jay247/widgets/textField/textField.dart';

class WithdrwaScreen extends StatelessWidget {
  const WithdrwaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackNavigation(
        centerTitle: true,
        titleText: AText.withdraw,
        body: PageContainer(children: [
          const Text(AText.withdawIntoBank),
          const SizedBox(height: ASizes.defaultSpace * 2),
          const Text(AText.selectCurrency,
              style: TextStyle(fontWeight: FontWeight.bold)),
          const CurrencyOptions(width: double.infinity),
          const ATextFiled(
            title: AText.amount,
            hintText: "2,000",
          ),
          ACard(
              backgroundColor:
                  AHelperFunctions.getColor("primaryColor", context),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("822828888"),
                  Text("FORTUNE IVO"),
                  Text("KUDA BANK"),
                ],
              )),
          const ACard(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("822828888"),
              Text("FORTUNE IVO"),
              Text("UNION BANK"),
            ],
          )),
          const SizedBox(height: ASizes.defaultSpace),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: ASizes.sm),
              AButtonText(name: "Add new account"),
            ],
          ),
          const RoundButton(name: AText.withdraw)
        ]));
  }
}
