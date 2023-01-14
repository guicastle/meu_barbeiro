import 'package:flutter/material.dart';
import 'package:meu_barbeiro/values/colors.dart';
import 'package:meu_barbeiro/values/utils.dart';

class ButtonComponent extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  Color colorButton;
  Color fontColor;
  Color iconColor;
  final VoidCallback onPressed;

  ButtonComponent({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    this.colorButton = Colors.white,
    this.fontColor = Colors.black,
    this.iconColor = Colors.black,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.07,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorButton),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(196),
            ),
          ),
        ),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            Text(
              title,
              style: SafeGoogleFont(
                'Poppins',
                fontSize: width / 26,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: fontColor,
              ),
            ),
            SizedBox(width: width * .02),
            Icon(
              size: width / 22,
              Icons.arrow_forward,
              color: iconColor,
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
