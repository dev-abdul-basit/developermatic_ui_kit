import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    this.color,
    this.gradiendColor1,
    this.gradientColor2,
    required this.press,
    required this.widget,
  }) : super(key: key);

  final Color? color;
  final Function press;
  final Color? gradiendColor1, gradientColor2;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(36.0),
        ),
        gradient: LinearGradient(
          begin: const Alignment(1.00, 0.05),
          end: const Alignment(-1, -0.05),
          colors: [gradiendColor1!, gradientColor2!],
        ),
        boxShadow: [
          BoxShadow(
            color: color!,
            blurRadius: 4,
            offset: const Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(36.0),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(36.0),
          ),
          onTap: () {
            press();
          },
          child: Center(
            child: widget,
          ),
        ),
      ),
    );
  }
}
