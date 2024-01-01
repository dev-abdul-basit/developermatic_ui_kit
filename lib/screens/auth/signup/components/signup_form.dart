import 'package:developermatic_kit/config/styles.dart';
import 'package:flutter/material.dart';

import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/constants.dart';

import '../../../../config/strings.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

//Name
  Widget buildNameFormField() {
    return TextFormField(
      style: text1TextStyle13,
      cursorColor: AppColors.primaryColor,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty) {
            //isButtonEnabled = true;
          } else {
            //isButtonEnabled = false;
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kFormError;
        }
        return null;
      },
      decoration: buildInputDecoration(AppStrings.email),
    );
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
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty && value.length > 6) {
            // isButtonEnabled = true;
          } else {
            // isButtonEnabled = false;
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

//Telefone
  Widget buildTelefonoFormField() {
    return TextFormField(
      style: text1TextStyle13,
      cursorColor: AppColors.primaryColor,
      autofocus: true,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        setState(() {
          if (value.isNotEmpty) {
            // isButtonEnabled = true;
          } else {
            // isButtonEnabled = false;
          }
        });
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kFormError;
        }
        return null;
      },
      decoration: buildInputDecoration(AppStrings.email),
    );
  }
}
