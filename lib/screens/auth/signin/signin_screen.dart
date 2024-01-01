import 'package:flutter/material.dart';
import 'package:developermatic_kit/screens/auth/signin/components/signin_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/signInScreen';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInForm(),
    );
  }
}
