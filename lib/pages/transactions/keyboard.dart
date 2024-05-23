import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class NumberKeybaord extends StatefulWidget {
  const NumberKeybaord({Key? key}) : super(key: key);

  @override
  _NumberKeybaordState createState() => _NumberKeybaordState();
}

class _NumberKeybaordState extends State<NumberKeybaord> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    final isBlack = AHelperFunctions.isDarkMode(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(text),
        NumericKeyboard(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textColor: isBlack ? AColor.white : AColor.black,
          // fontWeight: FontWeight.normal,
          onKeyboardTap: _onKeyboardTap,
          rightButtonFn: () {
            setState(() {
              text = text.substring(0, text.length - 1);
            });
          },
          rightIcon: Icon(
            Icons.clear_rounded,
          ),
          leftButtonFn: () {
            print('left button clicked');
          },
          // leftIcon: Icon(
          //   Icons.check,
          // ),
        ),
      ],
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }
}
