import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/convert/screen/crypto_options.dart';
import 'package:jay247/pages/convert/screen/crypto_wallet_details.dart';
import 'package:jay247/pages/transfer/screens/currency_options.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';
import 'package:jay247/widgets/textField/textField.dart';

class CyptoConvertSreen extends StatelessWidget {
  const CyptoConvertSreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return BackNavigation(
      centerTitle: true,
      titleText: AText.convertCryto,
      body: PageContainer(children: [
        const Row(
          children: [
            cryptoOptions(),
            SizedBox(width: ASizes.sm),
            Icon(AIcons.transfer),
            SizedBox(width: ASizes.sm),
            CurrencyOptions(),
          ],
        ),
        const ATextFiled(
          title: AText.amount,
          hintText: "2,000",
        ),
        const SizedBox(height: ASizes.defaultSpace),
        Row(
          children: [
            Text(
              "You will get: ",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "4,000",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: isDark ? AColor.dprimary : AColor.lprimary),
            )
          ],
        ),
        const SizedBox(height: ASizes.defaultSpace),
        RoundButton(
          width: 150,
          name: AText.generateWallet,
          onPressed: () {
            Get.to(const CryptoWalletDetails());
          },
        ),
      ]),
    );
  }
}
