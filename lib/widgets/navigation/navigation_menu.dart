import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/appbar/appbar.dart';
import 'package:jay247/widgets/containers/CircleIcon.dart';
import 'package:jay247/widgets/navigation/navigation_controller.dart';
import 'package:jay247/widgets/navigation/navigation_list.dart';
import 'package:jay247/widgets/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final navigationList = ANavigationList.navigationList;
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: false,
        leadingWidth: 35,
        leading: InkWell(
            onTap: () {
              // Get.to(ProfilePage());
            },
            child: AProfile.profileAvatar),
        title: InkWell(
          onTap: () {
            // Get.to(ProfilePage());
          },
          child: Text("Hi, Segma",
              style: TextStyle(
                  color: isDark ? AColor.appBarText : AColor.lprimary,
                  fontSize: ASizes.fontSizeMd)),
        ),
        actions: [
          CircleIcon(
            backgoundColor:
                isDark ? AColor.dprimary.withOpacity(0.2) : AColor.white,
            color: isDark ? AColor.dprimary : AColor.lprimary,
            icon: AIcons.notification,
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Container(
          color: isDark ? AColor.black : AColor.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: GNav(
              tabBackgroundColor: isDark ? AColor.dprimary : AColor.lprimary,
              textStyle: TextStyle(color: AColor.white),
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) => controller.selectedIndex.value = index,
              tabs: navigationList.map((nav) {
                return GButton(
                  icon: nav['icon'],
                  text: nav['label'],
                  iconActiveColor: AColor.white,
                );
              }).toList(),
            ),
          ),
        ),
      ),
      body: Obx(
        () => navigationList.isNotEmpty
            ? navigationList[controller.selectedIndex.value]['screen']
            : const Center(child: Text("Error Geting Page")),
      ),
    );
  }
}
