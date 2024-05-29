import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/card.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard(
      {super.key, required this.contryCode, required this.currency});
  final String contryCode;
  final String currency;
  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return ACard(
      backgroundColor: isDark ? AColor.dprimary : AColor.lprimary,
      width: 300,
      height: 130,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    "Current Balance",
                    style: TextStyle(
                        color: AColor.secTextColor,
                        fontSize: ASizes.fontSizeSm),
                  ),
                  SizedBox(width: ASizes.defaultSpace),
                  Icon(
                    Icons.remove_red_eye_outlined,
                    color: AColor.secTextColor,
                  )
                ],
              ),
              Container(
                  width: 70,
                  // height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AColor.secTextColor.withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountryFlag.fromCountryCode(
                          contryCode,
                          height: 20,
                          width: 20,
                          borderRadius: 20.0,
                        ),
                        Text(
                          currency,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: 300,
            child: Text(
              "$currency 10,000.00",
              softWrap: false,
              overflow: TextOverflow.fade,
              maxLines: 2,
              style: const TextStyle(
                  color: AColor.secTextColor,
                  fontSize: ASizes.lg,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
