import 'package:jay247/pages/auth/controllers/preview/preview_controller.dart';
import 'package:jay247/pages/auth/screens/preview/bg_path.dart';
import 'package:jay247/pages/auth/screens/preview/preview_list.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/pages/auth/screens/preview/single_page.dart';
import 'package:jay247/pages/auth/screens/preview/soomth_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/widgets/buttons/round_button.dart';

class APagePreview extends StatefulWidget {
  const APagePreview({super.key});

  @override
  State<APagePreview> createState() => _APagePreviewState();
}

class _APagePreviewState extends State<APagePreview> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> splashList = Get.put(APreviewList.previewList);
    final _controller = Get.put(PreviewController());
    print("Length " + splashList.length.toString());
    return Scaffold(
      body: Container(
        color: AHelperFunctions.isDarkMode(context)
            ? AColor.dbackground
            : AColor.lbackground,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              PageView(
                controller: _controller.pageController,
                onPageChanged: _controller.onPageChanged,
                children: splashList.map((splash) {
                  return SinglePage(
                    imageUrl: AHelperFunctions.isDarkMode(context)
                        ? splash['ImageUrlDark']
                        : splash['ImageUrlLight'],
                    iconsUrl: AHelperFunctions.isDarkMode(context)
                        ? splash['IconsUrlDark']
                        : splash['IconsUrlLight'],
                    title: splash['title'] ?? "",
                    description: splash['description'] ?? "",
                  );
                }).toList(),
              ),
              // skip btn
              Positioned(
                  top: kToolbarHeight,
                  right: ASizes.defaultSpace,
                  child: TextButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: () {
                      _controller.skipToLastPage();
                    },
                    child: Text(
                      AText.skip,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )),
              ASoomthPageIndicator(count: splashList.length),
              Obx(() => Container(
                    alignment: const Alignment(0, 0.9),
                    child: _controller.currentPageIndex.value <
                            splashList.length - 1
                        ? InkWell(
                            onTap: () {
                              _controller.nextPage(context);
                            },
                            child: AHelperFunctions.displayImage(
                              "assets/images/onBoard/next_arrow.svg",
                              width: 60.0,
                            ),
                          )
                        : Container(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // signin button
                                RoundButton(
                                  width: ASizes.buttonWidthMd,
                                  name: AText.signin,
                                  isOutlined: true,
                                ),

                                // signup button
                                RoundButton(
                                  name: AText.signup,
                                  width: ASizes.buttonWidthMd,
                                ),
                              ],
                            ),
                          ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
