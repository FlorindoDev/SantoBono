import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.title,
    required this.buttonColor,
    required this.textStyle,
  });

  final String title;
  final Color buttonColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(MediaQuery.sizeOf(context).width * 0.6, 75),
      ),
      child: Text(
        title,
        style: textStyle, //TextStyle(fontSize: 20),
      ),
    );
  }
}
