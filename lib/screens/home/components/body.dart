import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/size.dart';
import 'package:developermatic_kit/config/strings.dart';
import 'package:developermatic_kit/config/styles.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topHeading(),
                SizedBox(height: getProportionateScreenHeight(24)),
                searchBar(),
                SizedBox(height: getProportionateScreenHeight(24)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget topHeading() {
    return Container(
      color: Colors.transparent,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.appTitle,
            style: h1Bold24Black,
          ),
          Text(
            AppStrings.more,
            style: h1Bold24Black.copyWith(color: AppColors.greenText),
          )
        ],
      ),
    );
  }

  Widget searchBar() {
    return SizedBox(
      child: TextField(
        style: const TextStyle(color: AppColors.black),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          hintStyle: h3Bold16Black.copyWith(
            fontWeight: FontWeight.normal,
            color: AppColors.black.withOpacity(0.5),
          ),
          hintText: AppStrings.search,
          fillColor: AppColors.textFieldColor.withOpacity(0.5),
          prefixIcon: Icon(Icons.search,
              color: AppColors.black.withOpacity(0.5), size: 24),
        ),
      ),
    );
  }
}
