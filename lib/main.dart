import 'package:jay247/pages/auth/screens/switch/switch_theme_page.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:jay247/utills/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    var isDark = AHelperFunctions.isDarkMode(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      theme: AAppTheme.lightTheme,
      darkTheme: AAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: SwitchThemePage(),
        // APagePreview(),
        //     Center(
        //         child: CircularProgressIndicator(
        //   color: isDark ? AColor.black : AColor.white,
        // ))
      ),
    );
  }
}

// shape draw

//Add this CustomPaint widget to the Widget Tree

