import 'package:jay247/pages/auth/controllers/preview/preview_controller.dart';
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
    final cLogo = AHelperFunctions.getLogoUrl(context);
    return Container(
      // color: AHelperFunctions.isDarkMode(context)
      //     ? AColor.dbackground
      //     : AColor.lbackground,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            PageView(
              controller: _controller.pageController,
              onPageChanged: _controller.onPageChanged,
              children: splashList.map((splash) {
                return SinglePage(
                  imageUrl: cLogo,
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
                  onPressed: () {
                    _controller.skipToLastPage();
                  },
                  child: Text(
                    AText.skip,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )),

            ASoomthPageIndicator(count: splashList.length),
          ],
        ),
      ),
    );
  }
}
