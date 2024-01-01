import 'package:developermatic_kit/bottom_menu.dart';
import 'package:developermatic_kit/screens/auth/onboarding/onboard.dart';
import 'package:flutter/widgets.dart';

import '../screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  OnBoardScreen.routeName: (context) => const OnBoardScreen(),
  BottomMenuTabs.routeName: (context) => const BottomMenuTabs(),
};
