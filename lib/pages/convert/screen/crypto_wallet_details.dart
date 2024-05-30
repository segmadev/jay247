import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/primary_button.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';
import 'package:jay247/widgets/textField/copy_text_field.dart';
import 'package:jay247/widgets/textField/textField.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CryptoWalletDetails extends StatelessWidget {
  const CryptoWalletDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final walletAddress = "sjaskajlskjalgsdhjsklkqdkjfheklwdjwhe73283";
    return BackNavigation(
      titleText: "BTC Wallet Details",
      centerTitle: true,
      body: PageContainer(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              padding: const EdgeInsetsDirectional.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AColor.dprimary.withOpacity(0.2),
                    offset: const Offset(0, 0),
                    blurRadius: 21,
                    spreadRadius: 4,
                  )
                ],
                color: AColor.secTextColor,
              ),
              child: QrImageView(
                data: walletAddress,
                embeddedImage: const AssetImage(AAssets.bitcoinIcon),
                embeddedImageStyle:
                    const QrEmbeddedImageStyle(size: Size(30, 30)),
              ),
            ),
            CopyTextField(
              title: AText.walletAddress,
              value: walletAddress,
            ),
            const CopyTextField(
              title: AText.amount,
              value: "2,000",
            ),
            const SizedBox(height: ASizes.defaultSpace),
            const Text(
              "You can receive LTC with the QR CODE or address above. It will be automatically added to your Naira Balance",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ASizes.defaultSpace * 2),
            RoundButton(width: double.infinity, name: "Done Sending to wallet"),
          ]),
    );
  }
}
