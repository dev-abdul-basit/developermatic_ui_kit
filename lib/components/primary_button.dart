import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.textStyle,
    this.color,
    this.gradiendColor1,
    this.gradientColor2,
    required this.press,
  }) : super(key: key);
  final String text;
  final Color? color;

  final Function press;
  final TextStyle textStyle;
  final Color? gradiendColor1, gradientColor2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        gradient: LinearGradient(
          begin: const Alignment(1.00, 0.05),
          end: const Alignment(-1, -0.05),
          colors: [gradiendColor1!, gradientColor2!],
        ),
       
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          onTap: () {
            press();
          },
          child: Center(
            child: Text(
              text,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
