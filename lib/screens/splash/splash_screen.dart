import 'package:developermatic_kit/config/assets.dart';
import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/strings.dart';
import 'package:flutter/material.dart';

import '../../config/styles.dart';
import '../auth/onboarding/onboard.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _fadeInAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _controller.forward().whenComplete(() {
      gotoOnBoarding();
    });
  }

  gotoOnBoarding() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(OnBoardScreen.routeName, (route) => false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackgroundWithImage(
      imageUrl: ImageAssets.img1,
      gradientColors: [
        AppColors.primaryColor,
        AppColors.primaryColor,
        AppColors.primaryColor.withOpacity(0.8),
      ],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _fadeInAnimation.value,
                  //child: Styles.extraBold('Vianol', color: AppColors.white),
                  child: const Text(
                    AppStrings.appTitle,
                    style: btnTextStyle,
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class GradientBackgroundWithImage extends StatelessWidget {
  final String imageUrl;
  final List<Color> gradientColors;
  final Widget child;

  const GradientBackgroundWithImage({
    super.key,
    required this.imageUrl,
    required this.gradientColors,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Image.asset(
          imageUrl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        // Gradient layer on top of the image
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: gradientColors,
            ),
          ),
        ),

        // Child widget on top of the gradient layer
        Positioned.fill(
          child: child,
        ),
      ],
    );
  }
}
