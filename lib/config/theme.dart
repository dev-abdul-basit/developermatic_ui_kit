import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    brightness: Brightness.dark,
    //primaryColor: kcolorRedDark,
    scaffoldBackgroundColor: AppColors.white,
    primarySwatch: Palette.kColorPrimary,
    fontFamily: "TitilliumWeb",
    appBarTheme: appBarTheme(),
    canvasColor: Colors.transparent,
    primaryColor: AppColors.primaryColor,
    textTheme: textTheme(),
    unselectedWidgetColor: AppColors.textFieldColor,
    // inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.primaryColor,
    ),
    bodySmall: TextStyle(
      color: AppColors.primaryColor,
    ),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    backgroundColor: AppColors.primaryColor,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
    ),
  );
}

class Palette {
  static const MaterialColor kColorPrimary = MaterialColor(
    0xff1F42D8, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff1F42D8), //10%
      100: Color(0xff1F42D8), //20%
      200: Color(0xff1F42D8), //30%
      300: Color(0xff1F42D8), //40%
      400: Color(0xff1F42D8), //50%
      500: Color(0xff1F42D8), //60%
      600: Color(0xff1F42D8), //70%
      700: Color(0xff1F42D8), //80%
      800: Color(0xff1F42D8), //90%
      900: Color(0xff1F42D8), //100%
    },
  );
}
