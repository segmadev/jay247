import 'package:jay247/pages/home/screens/home_screen.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';
import 'package:jay247/widgets/navigation/more_navigation_menu.dart';
import 'package:flutter/material.dart';

class ANavigationList {
  static List<dynamic> navigationList = [
    {
      "label": AText.home,
      "icon": AIcons.home,
      "screen": const HomeScreen(),
    },
    {
      "label": AText.transactions,
      "icon": AIcons.campaigns,
      "screen": Center(
        child: Text("Transactions Page"),
      )
    },
    {
      "label": AText.wallet,
      "icon": AIcons.wallet,
      "screen": Center(
        child: Text("Wallet Page"),
      )
    },
    {
      "label": AText.settings,
      "icon": AIcons.widget,
      "screen": MoreNavigationMenu()
    },
  ];

  static List<dynamic> moreNavigationList = [
    {
      "label": AText.profile,
      "screen": const Center(
        child: Center(
          child: Text("Home Page"),
        ),
      )
    },
    {
      "label": AText.settings,
      "screen": const BackNavigation(
        body: Center(child: Text("Settings Page")),
      )
    },
    {
      "label": AText.support,
      "screen": const BackNavigation(
        body: Center(child: Text("Support Page")),
      )
    },
    {
      "label": AText.legal,
      "screen": const BackNavigation(
        body: Center(child: Text("Legal Page")),
      )
    },
    {
      "label": AText.about,
      "screen": const BackNavigation(
        body: Center(child: Text("About page")),
      )
    },
    {
      "label": AText.logOut,
      "color": AColor.danger.withOpacity(0.4),
      "icon": AIcons.logout,
      "screen": Center(
        child: Text("Logout Page"),
      ),
      "function": () {
        // AuthenticationRepository().logout();
      }
    },
  ];
}
