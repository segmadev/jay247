import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/containers/page_container.dart';
import 'package:jay247/widgets/navigation/back_navigation.dart';
import 'package:jay247/widgets/pages/success_page.dart';

class SendToScreen extends StatelessWidget {
  const SendToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return BackNavigation(
      body: PageContainer(children: [
        const SizedBox(height: ASizes.defaultSpace),
        Row(
          children: [
            Text(
              AText.send,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(width: ASizes.sm),
            Text("20,000",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: isDark ? AColor.dprimary : AColor.lprimary,
                    )),
            const SizedBox(width: ASizes.sm),
            Text("to", style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
        const SizedBox(height: ASizes.defaultSpace),
        TextFormField(
          decoration: const InputDecoration(
              hintText: AText.searchUser, suffixIcon: Icon(AIcons.scanQr)),
        ),
        SizedBox(height: 200),
        Center(
            child: RoundButton(
          name: AText.send,
          onPressed: () {
            Get.to(
                SuccessSCreen(text: AText.moenySent, heading: AText.success));
          },
        )),
      ]),
    );
  }
}
