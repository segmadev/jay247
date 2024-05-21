import 'package:flutter_svg/svg.dart';
import 'package:jay247/pages/auth/controllers/preview/preview_controller.dart';
import 'package:jay247/pages/auth/screens/preview/bg_path.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  SinglePage({
    super.key,
    required this.imageUrl,
    this.title,
    required this.description,
    this.iconsUrl,
  });

  final String? iconsUrl;
  final String imageUrl;
  final String? title;
  final String description;
  final _controller = PreviewController.instance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(
              double.infinity,
              (AHelperFunctions.screenHeight() / 2)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: _controller.currentPageIndex.value.floor().isEven
              ? RPSCustomPainter2()
              : RPSCustomPainter1(),
        ),
        Container(
          width: double.infinity,
          color: Colors.transparent,
          child: Column(
            children: [
              const SizedBox(
                height: ASizes.sm,
              ),
              iconsUrl != null
                  ? Stack(
                      children: [
                        AHelperFunctions.displayImage(iconsUrl!),
                        Padding(
                          padding: EdgeInsets.only(
                              top: AHelperFunctions.screenHeight() / 5,
                              left: 10),
                          child: AHelperFunctions.displayImage(imageUrl),
                        ),
                      ],
                    )
                  : AHelperFunctions.displayImage(imageUrl),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 300,
                child: Center(
                  child: Text(
                    title ?? "",
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 325,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
