import 'package:flutter/material.dart';
import 'package:developermatic_kit/screens/auth/signup/components/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/signupScreen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpForm(),
    );
  }
}
