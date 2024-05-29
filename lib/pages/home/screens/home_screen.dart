import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jay247/pages/home/screens/action_buttons.dart';
import 'package:jay247/pages/home/screens/balance_slider.dart';
import 'package:jay247/pages/transactions/sigle_transaction.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/CircleIcon.dart';
import 'package:jay247/widgets/containers/card.dart';
import 'package:jay247/widgets/containers/line_divider.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/header/section_header.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContainer(
        padding: EdgeInsets.symmetric(horizontal: ASizes.sm),
        children: [
          BalanceSlider(),
          SizedBox(height: 20),
          ActionButtons(),
          SizedBox(height: 20),
          ACard(
            child: Column(
              children: [
                SectionHeader(
                  title: AText.transactions,
                  textButton: AText.viewAll,
                ),
                SingleTransaction(),
                SingleTransaction(),
                SingleTransaction(),
                SingleTransaction(showDivider: false),
              ],
            ),
          ),
        ]);
  }
}
