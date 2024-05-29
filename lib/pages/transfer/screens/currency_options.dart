import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/card.dart';

class CurrencyOptions extends StatelessWidget {
  const CurrencyOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    final _dropDownValue = "NG".obs;
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
                  value: "NG",
                  child: Row(
                    children: [
                      CountryFlag.fromCountryCode(
                        "NG",
                        height: 20,
                        width: 20,
                        borderRadius: 20.0,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Naira',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  )),
              DropdownMenuItem(
                  value: "KE",
                  child: Row(
                    children: [
                      CountryFlag.fromCountryCode(
                        "KE",
                        height: 20,
                        width: 20,
                        borderRadius: 20.0,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Kenya',
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
