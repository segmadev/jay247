import 'package:get/get.dart';
import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:flutter/material.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class PageContainer extends StatelessWidget {
  const PageContainer(
      {super.key,
      required this.children,
      this.showBack = false,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      this.width,
      this.height});

  final List<Widget> children;
  final bool showBack;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showBack
                    ? Column(
                        children: [
                          const SizedBox(
                            height: ASizes.defaultSpace,
                          ),
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: AHelperFunctions.displayImage(isDark
                                ? AAssets.backPrimaryIcon
                                : AAssets.backIcon),
                          ),
                        ],
                      )
                    : const SizedBox(),
                SizedBox(
                  width: width ?? MediaQuery.of(context).size.width,
                  height: height ?? MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment:
                        crossAxisAlignment ?? CrossAxisAlignment.start,
                    mainAxisAlignment:
                        mainAxisAlignment ?? MainAxisAlignment.start,
                    children: children,
                  ),
                ),
                SizedBox(
                  height: ASizes.defaultSpace,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
