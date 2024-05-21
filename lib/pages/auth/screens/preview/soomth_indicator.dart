import 'package:jay247/pages/auth/controllers/preview/preview_controller.dart';
import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ASoomthPageIndicator extends StatelessWidget {
  ASoomthPageIndicator({
    super.key,
    required this.count,
  });

  final _controller = PreviewController.instance;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, 0.65),
      child: SmoothPageIndicator(
        controller: _controller.pageController,
        count: count,
        effect: ExpandingDotsEffect(
          dotColor: AHelperFunctions.isDarkMode(context)
              ? AColor.dprimary.withOpacity(0.3)
              : AColor.lprimary.withOpacity(0.3),
          activeDotColor: AHelperFunctions.isDarkMode(context)
              ? AColor.dprimary
              : AColor.lprimary,
          dotWidth: 10, // Adjust the size of the dots here
          dotHeight: 10,
        ),

        // const WormEffect(
        //   dotWidth: 5, // Adjust the size of the dots here
        //   dotHeight: 5, // Adjust the size of the dots here
        // ),
      ),
    );
  }
}
