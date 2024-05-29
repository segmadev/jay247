import 'package:jay247/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class BackNavigation extends StatelessWidget {
  const BackNavigation(
      {super.key,
      this.body,
      this.appBar,
      this.titleText,
      this.centerTitle = false});
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final String? titleText;
  final bool centerTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar ??
            AAppBar(
              centerTitle: centerTitle,
              titleText: titleText,
            ),
        body: body);
  }
}
