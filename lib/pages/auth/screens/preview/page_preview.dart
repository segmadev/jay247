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

class APagePreview extends StatefulWidget {
  const APagePreview({super.key});

  @override
  State<APagePreview> createState() => _APagePreviewState();
}

class _APagePreviewState extends State<APagePreview> {
  List<dynamic> splashList = Get.put(APreviewList.previewList);
  final _controller = Get.put(PreviewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AHelperFunctions.isDarkMode(context)
            ? AColor.dbackground
            : AColor.lbackground,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: <Widget>[
              // Obx(() => CustomPaint(
              //       size: Size(
              //           double.infinity,
              //           (AHelperFunctions.screenHeight() / 2)
              //               .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              //       painter: _controller.currentPageIndex.value.floor().isEven
              //           ? RPSCustomPainter1()
              //           : RPSCustomPainter2(),
              //     )),
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
              Container(
                alignment: const Alignment(0, 0.9),
                child: InkWell(
                  onTap: () {
                    _controller.nextPage(context);
                  },
                  child: AHelperFunctions.displayImage(
                    "assets/images/onBoard/next_arrow.svg",
                    width: 60.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
