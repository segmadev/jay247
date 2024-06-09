import 'package:jay247/bindings/general_bindings.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/utills/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// void main() {
//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    var isDark = AHelperFunctions.isDarkMode(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      // themeMode: ThemeMode.light,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: Scaffold(
          body: Center(
              child: CircularProgressIndicator(
        color: isDark ? AColor.white : AColor.black,
      ))),
    );
  }
}
