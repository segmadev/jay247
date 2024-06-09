import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/auth/controllers/theme_controller.dart';
import 'package:jay247/utills/consts/colors.dart';

class SwitchThemeButton extends StatefulWidget {
  const SwitchThemeButton(
      {super.key,
      this.width,
      this.height,
      this.toggleSize,
      this.padding,
      this.isSmall = false});
  final double? width;
  final double? height;
  final double? toggleSize;
  final double? padding;
  final bool isSmall;

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
      width: widget.width ?? (widget.isSmall ? 40.0 : 190.0),
      height: widget.height ?? (widget.isSmall ? 20.0 : 80.0),
      valueFontSize: 15.0,
      toggleSize: widget.toggleSize ?? (widget.isSmall ? 5.0 : 45.0),
      value: isDark,
      borderRadius: 60.0,
      padding: widget.padding ?? 16.0,
      toggleColor: AColor.darkSuccess,
      activeColor: AColor.lbackground,
      inactiveColor: AColor.dbackground,
      activeIcon: Icon(
        Icons.wb_sunny_outlined,
        color: AColor.dbackground,
        size: widget.isSmall ? 2.0 : null,
      ),
      showOnOff: false,
      activeText: !widget.isSmall ? "Switch to Light" : "",
      inactiveText: !widget.isSmall ? "Switch to Dark" : "",
      inactiveTextColor: AColor.white,
      activeTextColor: AColor.dbackground,
      activeTextFontWeight: FontWeight.normal,
      inactiveTextFontWeight: FontWeight.normal,
      // activeSwitchBorder: Border.all(color: AColor.black),
      inactiveIcon: Icon(
        Icons.dark_mode_outlined,
        size: widget.isSmall ? 2.0 : null,
      ),
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
