
import 'package:developermatic_kit/components/social_btn.dart';
import 'package:developermatic_kit/config/assets.dart';
import 'package:developermatic_kit/config/constants.dart';
import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../config/strings.dart';
import '../../../../config/styles.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

//Email
  Widget buildEmailFormField() {
    return TextFormField(
      style: text1TextStyle13,
      cursorColor: AppColors.primaryColor,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && emailValidatorRegExp.hasMatch(value)) {
            //isButtonEnabled = true;
          } else {
            //isButtonEnabled = false;
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: buildInputDecoration(AppStrings.email),
    );
  }

//Password
  Widget buildPasswordFormField() {
    return TextFormField(
      style: text1TextStyle13,
      cursorColor: AppColors.primaryColor,
      autofocus: true,
      keyboardType: TextInputType.text,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && value.length > 6) {
            // isButtonEnabled = true;
          } else {
            //isButtonEnabled = false;
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 6) {
          return kShortPassError;
        }
        return null;
      },
      decoration: buildInputDecoration(AppStrings.password),
    );
  }

//Socail Buttons
  Widget socailButtons() {
    return Row(
      children: [
        Expanded(
          child: SocialButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.googleIcon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Google',
                  style: h4Bold13Black,
                )
              ],
            ),
            press: () {},
            gradiendColor1: AppColors.white,
            gradientColor2: AppColors.white,
            color: AppColors.dashboardGreyColor,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: SocialButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.fbIcon,
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8),
                Text(
                  'Facebook',
                  style: h4Bold13Black.copyWith(color: AppColors.white),
                )
              ],
            ),
            press: () {},
            gradiendColor1: const Color(0xFF4E6AAC),
            gradientColor2: const Color(0xFF4E6AAC),
            color: const Color(0xFF4E6AAC),
          ),
        ),
      ],
    );
  }
}
