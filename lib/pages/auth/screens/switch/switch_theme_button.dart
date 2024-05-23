import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/theme_controller.dart';
import 'package:jay247/utills/consts/colors.dart';

class SwitchThemeButton extends StatefulWidget {
  const SwitchThemeButton({super.key});

  @override
  State<SwitchThemeButton> createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  bool isDark = true;
  ThemeMode _themeMode = ThemeMode.system;
  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(ThemeController());
    return FlutterSwitch(
      width: 190.0,
      height: 80.0,
      valueFontSize: 15.0,
      toggleSize: 45.0,
      value: isDark,
      borderRadius: 60.0,
      padding: 16.0,
      toggleColor: AColor.darkSuccess,
      activeColor: AColor.lbackground,
      inactiveColor: AColor.dbackground,
      activeIcon: Icon(
        Icons.wb_sunny_outlined,
        color: AColor.dbackground,
      ),
      showOnOff: true,
      activeText: "Switch to Light",
      inactiveText: "Switch to Dark",
      inactiveTextColor: AColor.white,
      activeTextColor: AColor.dbackground,
      activeTextFontWeight: FontWeight.normal,
      inactiveTextFontWeight: FontWeight.normal,
      inactiveIcon: Icon(Icons.dark_mode_outlined),
      onToggle: (isOn) {
        _controller.switchTheme();
        Get.changeThemeMode(_controller.currentTheme.value);
        setState(() {
          isDark = isOn;
        });
        // isOn ? _toggleTheme(ThemeMode.light) : _toggleTheme(ThemeMode.dark);
      },
    );
  }
}
