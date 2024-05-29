import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:jay247/pages/fund/screens/deposit_accont.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/widgets/containers/card.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';

class FundAccountScreen extends StatelessWidget {
  const FundAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackNavigation(
      titleText: "Fund Account",
      centerTitle: true,
      body: PageContainer(
        children: [
          Center(
              child: Column(
            children: [
              Text('The account number provided is unique to JAY247 account.',
                  textAlign: TextAlign.center),
              SizedBox(height: ASizes.defaultSpace),
              Text(
                  'Transfer any amount from your bank app your JAY247 Account would be credited immediately',
                  textAlign: TextAlign.center),
            ],
          )),
          SizedBox(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ACard(
                    backgroundColor: AColor.lprimary.withOpacity(0.6),
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountryFlag.fromCountryCode(
                          "NG",
                          height: 20,
                          width: 20,
                          borderRadius: 20.0,
                        ),
                        Text(
                          "NGN Account",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    )),
                ACard(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CountryFlag.fromCountryCode(
                          "KE",
                          height: 20,
                          width: 20,
                          borderRadius: 20.0,
                        ),
                        Text(
                          "KSH Account",
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: ASizes.defaultSpace),
          DepositAccount(),
        ],
      ),
    );
  }
}
