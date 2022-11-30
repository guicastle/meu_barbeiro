import 'package:flutter/material.dart';
import 'package:meu_barbeiro/values/colors.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  final String text;
  int fontSize;
  bool isUnderLine;
  String font;
  FontWeight fontWeight;

  TextWidget(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.isUnderLine = false,
      this.font = 'Avenir',
      this.fontWeight = FontWeight.w900})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 3,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isUnderLine
                ? const Color.fromARGB(255, 17, 20, 49) //Color(0xFF363f93)
                : const Color.fromARGB(0, 255, 255, 255),
            width: 1.0,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize.toDouble(),
          fontFamily: font,
          fontWeight: fontWeight,
          color: primaryColor,
        ),
      ),
    );
  }
}
