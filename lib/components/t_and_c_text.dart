import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../config/colors.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            const TextSpan(
              text: 'by tapping "sign in", you agree to the ',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w400,
                // height: 0.09,
              ),
            ),
            TextSpan(
              text: 'Terms',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                // height: 0.09,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Terms tapped');
                },
            ),
            const TextSpan(
              text: '. Learn how we process your data in our ',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w400,
                // height: 0.09,
              ),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                // height: 0.09,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Privacy Policy tapped');
                },
            ),
            const TextSpan(
              text: ' and ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w400,
                // height: 0.09,
              ),
            ),
            TextSpan(
              text: 'Cookies Policy',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Titillium Web',
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
                // height: 0.09,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Cookies Policy tapped');
                },
            ),
          ],
        ),
      ),
    );
  }
}
