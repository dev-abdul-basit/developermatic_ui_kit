import 'package:flutter/material.dart';
import 'package:developermatic_kit/components/appbar.dart';
import 'package:developermatic_kit/config/strings.dart';
import 'package:developermatic_kit/screens/auth/forgot_password/components/forgot_pass_form.dart';

class ForgotPassowrdScreen extends StatelessWidget {
  static String routeName = '/forgotPasswordScreen';
  const ForgotPassowrdScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.password,
      ),
      body: ForgotPasswordForm(),
    );
  }
}
