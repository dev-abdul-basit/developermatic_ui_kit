import 'package:developermatic_kit/bottom_menu.dart';
import 'package:developermatic_kit/components/primary_button.dart';
import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/size.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.onboardHeadingOne, style: h1Bold24Black),
            SizedBox(height: getProportionateScreenHeight(24)),
            Text(
              AppStrings.onboardHeadingTwo,
              style: h2Bold18Black.copyWith(
                color: AppColors.btnYellow,
                fontWeight: FontWeight.normal,
              ),
            ),
            Center(
              child: PrimaryButton(
                text: AppStrings.clickMe,
                textStyle: btnTextStyle,
                press: () {
                  gotoTabs(context);
                },
                gradiendColor1: AppColors.primaryColor,
                gradientColor2: AppColors.dashboardBlueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  gotoTabs(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(BottomMenuTabs.routeName, (route) => false);
  }
}
