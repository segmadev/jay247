import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/widgets/appbar/appbar.dart';
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
    return Scaffold(
      appBar: AAppBar(
        showBackArrow: false,
        leadingWidth: 40,
        leading: InkWell(
            onTap: () {
              // Get.to(ProfilePage());
            },
            child: AProfile.profileAvatar),
        title: InkWell(
          onTap: () {
            // Get.to(ProfilePage());
          },
          child: Text("Undfined", style: TextStyle(color: AColor.appBarText)),
        ),
        actions: [
          IconButton(
            iconSize: ASizes.iconMd,
            icon: Icon(AIcons.notification),
            onPressed: () {},
          ),
          IconButton(
            iconSize: ASizes.iconMd,
            icon: Icon(AIcons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: ASizes.navBarHeight,
          elevation: ASizes.navBarElevation,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: navigationList.map((nav) {
            return NavigationDestination(
              icon: Icon(nav['icon']),
              label: nav['label'],
            );
          }).toList(),
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
