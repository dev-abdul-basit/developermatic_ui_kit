import 'package:developermatic_kit/bottom_menu.dart';
import 'package:developermatic_kit/components/primary_button.dart';
import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/strings.dart';
import 'package:developermatic_kit/config/styles.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  static String routeName = "/onBoard";
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
            child: PrimaryButton(
          text: AppStrings.clickMe,
          textStyle: btnTextStyle,
          press: () {
            gotoTabs(context);
          },
          gradiendColor1: AppColors.primaryColor,
          gradientColor2: AppColors.primaryColor,
        )),
      ),
    );
  }

  gotoTabs(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(BottomMenuTabs.routeName, (route) => false);
  }
}
