import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/transactions/keyboard.dart';
import 'package:jay247/pages/transfer/screens/currency_options.dart';
import 'package:jay247/pages/transfer/screens/send_to_screen.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/card.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return BackNavigation(
      titleText: AText.transfer,
      centerTitle: true,
      body: PageContainer(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CurrencyOptions(),
          const SizedBox(
            height: 200,
          ),
          const NumberKeybaord(),
          RoundButton(
            name: AText.send,
            onPressed: () {
              Get.to(const SendToScreen());
            },
          ),
        ],
      ),
    );
  }
}
