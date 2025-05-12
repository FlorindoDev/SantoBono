import 'package:flutter/material.dart';
import 'package:santobono_gui/src/controller/AccessPageController.dart';

class PreHomeButton extends StatelessWidget {
  const PreHomeButton({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.textStyle,
    required this.isOspite,
  });

  final String title;
  final Color buttonColor;
  final TextStyle? textStyle;
  final bool isOspite;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        AccessPageController.doLogin(context, isOspite);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize:
            MediaQuery.sizeOf(context).height > 600
                ? Size(MediaQuery.sizeOf(context).width * 0.6, 75)
                : Size(
                  MediaQuery.sizeOf(context).width * 0.6,
                  MediaQuery.sizeOf(context).height * 0.1,
                ),
      ),
      child: Text(
        title,
        style: textStyle, //TextStyle(fontSize: 20),
      ),
    );
  }
}
