import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/card.dart';

class cryptoOptions extends StatelessWidget {
  const cryptoOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    final _dropDownValue = "BTC".obs;
    return ACard(
      paddingEdgeInsets: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      backgroundColor: isDark
          ? AColor.dprimary.withOpacity(0.3)
          : AColor.lprimary.withOpacity(0.3),
      padding: 5.0,
      width: 150,
      child: Obx(() => DropdownButton(
            padding: const EdgeInsets.all(0),
            isExpanded: true,
            underline: Text(""),
            // itemHeight: 200,
            alignment: AlignmentDirectional.topCenter,
            style: Theme.of(context).textTheme.titleMedium,
            value: _dropDownValue.value,
            focusColor: AColor.transparent,

            items: [
              DropdownMenuItem(
                  value: "BTC",
                  child: Row(
                    children: [
                      AHelperFunctions.displayImage(AAssets.bitcoinIcon,
                          width: 20.0, height: 20.0),
                      SizedBox(width: 10),
                      Text(
                        'Bitcoin',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  )),
              DropdownMenuItem(
                  value: "USDT",
                  child: Row(
                    children: [
                      AHelperFunctions.displayImage(AAssets.usdtIcon,
                          width: 20.0, height: 20.0),
                      SizedBox(width: 10),
                      Text(
                        'USDT',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ))
            ],
            onChanged: (val) {
              _dropDownValue.value = val!;
            },
          )),
    );
  }
}
