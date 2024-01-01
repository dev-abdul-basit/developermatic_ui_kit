import 'package:flutter/material.dart';

import 'package:developermatic_kit/config/colors.dart';

//Headings Black
const h1Bold26Black = TextStyle(
  color: AppColors.black,
  fontSize: 26,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);
const h2Bold18Black = TextStyle(
  color: AppColors.black,
  fontSize: 18,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);
const h3Bold16Black = TextStyle(
  color: AppColors.black,
  fontSize: 16,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);
const h4Bold13Black = TextStyle(
  color: AppColors.black,
  fontWeight: FontWeight.bold,
  fontSize: 13.0,
  fontFamily: 'Poppins',
);
////
const text1TextStyle13 = TextStyle(
  color: AppColors.black,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w300,
  fontSize: 13.0,
);

const text2TextStyle10 = TextStyle(
  color: AppColors.black,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w300,
  fontSize: 10.0,
);
//

const btnTextStyle = TextStyle(
  color: AppColors.white,
  fontSize: 18,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
);

InputDecoration buildInputDecoration(String hintText) {
  return InputDecoration(
    errorStyle: const TextStyle(height: 0),
    hintText: hintText,
    hintStyle: text1TextStyle13,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.dashboardGrey,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.dashboardGrey,
        width: 2,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: 2,
      ),
    ),
  );
}

// class FWt {
//   FWt();

//   static FontWeight extraLight = FontWeight.w200;
//   static FontWeight light = FontWeight.w300;
//   static FontWeight regular = FontWeight.w400;
//   static FontWeight semiBold = FontWeight.w500;
//   static FontWeight mediumBold = FontWeight.w600;
//   static FontWeight bold = FontWeight.w700;
//   static FontWeight extraBold = FontWeight.w800;
//   static FontWeight text = FontWeight.w900;
// }

// class Styles {
//   static Text regular(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextAlign? align,
//     double? height,
//     FontStyle? fontStyle,
//     FontWeight? fontWeight,
//     bool strike = false,
//     int? lines,
//     TextOverflow? overflow,
//     bool underline = false,
//   }) {
//     return Text(
//       text,
//       textAlign: align ?? TextAlign.left,
//       maxLines: lines,
//       overflow: overflow,
//       style: TextStyle(
//         fontSize: fontSize ?? 14.0,
//         fontWeight: fontWeight ?? FWt.regular,
//         color: color,
//         height: height,
//         fontStyle: fontStyle,
//         decoration: underline
//             ? TextDecoration.underline
//             : strike
//                 ? TextDecoration.lineThrough
//                 : TextDecoration.none,
//       ),
//     );
//   }

//   static TextSpan spanRegular(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextAlign? align,
//     double? height,
//     FontStyle? fontStyle,
//     FontWeight? fontWeight,
//     bool strike = false,
//     int? lines,
//     TextOverflow? overflow,
//     bool underline = false,
//   }) {
//     return TextSpan(
//       text: text,
//       style: TextStyle(
//         fontSize: fontSize ?? 14.0,
//         fontWeight: fontWeight ?? FWt.regular,
//         color: color,
//         height: height,
//         fontStyle: fontStyle,
//         decoration: underline
//             ? TextDecoration.underline
//             : strike
//                 ? TextDecoration.lineThrough
//                 : TextDecoration.none,
//       ),
//     );
//   }

//   static Text medium(
//     String text, {
//     double? fontSize,
//     FontWeight? fontWeight,
//     Color? color,
//     TextAlign? align,
//     double? height,
//     bool strike = false,
//     int? lines,
//     TextOverflow? overflow,
//     bool underline = false,
//   }) {
//     return Text(
//       text,
//       textAlign: align ?? TextAlign.left,
//       maxLines: lines,
//       overflow: overflow,
//       style: TextStyle(
//         fontSize: fontSize ?? 14.0,
//         fontWeight: fontWeight ?? FWt.mediumBold,
//         color: color,
//         height: height,
//         decoration: underline
//             ? TextDecoration.underline
//             : strike
//                 ? TextDecoration.lineThrough
//                 : TextDecoration.none,
//       ),
//     );
//   }

//   static Text semiBold(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextOverflow? overflow,
//     TextAlign? align,
//     double? height,
//     bool strike = false,
//     bool underline = false,
//     int? lines,
//   }) {
//     return Text(
//       text,
//       textAlign: align ?? TextAlign.left,
//       maxLines: lines,
//       overflow: overflow,
//       style: TextStyle(
//         fontSize: fontSize ?? 16.0,
//         fontWeight: FWt.semiBold,
//         color: color,
//         height: height,
//         decoration: underline
//             ? TextDecoration.underline
//             : strike
//                 ? TextDecoration.lineThrough
//                 : TextDecoration.none,
//         fontFamily: 'Epilogue',
//       ),
//     );
//   }

//   static TextSpan spanBold(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextAlign? align,
//     bool strike = false,
//     int? lines,
//     TextOverflow? overflow,
//     double? height,
//   }) {
//     return TextSpan(
//       text: text,
//       style: TextStyle(
//         fontSize: fontSize ?? 18.0,
//         fontWeight: FWt.bold,
//         color: color,
//         height: height,
//         decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
//       ),
//     );
//   }

//   static Text bold(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextAlign? align,
//     bool strike = false,
//     int? lines,
//     TextOverflow? overflow,
//     double? height,
//   }) {
//     return Text(
//       text,
//       textAlign: align ?? TextAlign.left,
//       maxLines: lines,
//       overflow: overflow,
//       style: TextStyle(
//         fontSize: fontSize ?? 18.0,
//         fontWeight: FWt.bold,
//         color: color,
//         height: height,
//         decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
//       ),
//     );
//   }

//   static Text extraBold(
//     String text, {
//     double? fontSize,
//     Color? color,
//     TextAlign? align,
//     int? lines,
//     bool strike = false,
//     TextOverflow? overflow,
//   }) {
//     return Text(
//       text,
//       textAlign: align ?? TextAlign.left,
//       maxLines: lines,
//       overflow: overflow,
//       style: TextStyle(
//         fontSize: fontSize ?? 20.0,
//         fontWeight: FWt.extraBold,
//         color: color,
//         decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
//       ),
//     );
//   }
// }
