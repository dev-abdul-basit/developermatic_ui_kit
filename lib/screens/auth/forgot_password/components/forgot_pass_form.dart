import 'package:flutter/material.dart';

import '../../../../components/primary_button.dart';
import '../../../../config/assets.dart';
import '../../../../config/colors.dart';
import '../../../../config/constants.dart';
import '../../../../config/strings.dart';
import '../../../../config/styles.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? telefono;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            //Image
            Image.asset(
              ImageAssets.illustration,
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                AppStrings.password,
                style: h3Bold16Black.copyWith(fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            //Form
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  buildEmailFormField(),
                  const SizedBox(height: 8),
                  buildTelefonoFormField(),

                  const SizedBox(height: 72),
                  //Sign In Button
                  PrimaryButton(
                    text: AppStrings.email,
                    textStyle: btnTextStyle,
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        print('Form Validated');
                      }
                    },
                    gradiendColor1: AppColors.primaryColor,
                    gradientColor2: AppColors.primaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//Email
  Widget buildEmailFormField() {
    return TextFormField(
      style: text1TextStyle16,
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

//Telefone
  Widget buildTelefonoFormField() {
    return TextFormField(
      style: text1TextStyle16,
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
