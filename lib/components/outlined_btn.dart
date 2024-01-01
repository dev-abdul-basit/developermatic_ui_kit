import 'package:flutter/material.dart';
import 'package:developermatic_kit/config/colors.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    Key? key,
    required this.primaryBtnColor,
    required this.primaryTextStyle,
    required this.btnText,
    required this.btnPress,
  }) : super(key: key);

  final Color primaryBtnColor;
  final TextStyle primaryTextStyle;
  final String btnText;
  final Function btnPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 52,
      child: OutlinedButton(
        onPressed: () {
          btnPress();
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 2.0,
            color: AppColors.red, // Set the outlined color to red
          ),
          backgroundColor: primaryBtnColor, // Set the filled color to white
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          elevation: 2,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shadowColor: AppColors.black,
        ),
        child: Text(
          btnText,
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
