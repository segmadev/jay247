import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jay247/pages/home/screens/action_buttons.dart';
import 'package:jay247/pages/home/screens/balance_slider.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/containers/CircleIcon.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return const PageContainer(children: [
      BalanceSlider(),
      SizedBox(height: 20),
      ActionButtons(),
    ]);
  }
}
