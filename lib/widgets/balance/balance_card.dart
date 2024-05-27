import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/card.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return ACard(
      backgroundColor: isDark ? AColor.dprimary : AColor.lprimary,
      width: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
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
                  // height: 40,
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
                          "NG",
                          height: 20,
                          width: 20,
                          borderRadius: 20.0,
                        ),
                        const Text(
                          "NGN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(
            width: 300,
            child: Text(
              "N 10,000.00",
              softWrap: false,
              overflow: TextOverflow.fade,
              maxLines: 2,
              style: TextStyle(
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
