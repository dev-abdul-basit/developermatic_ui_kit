import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:developermatic_kit/config/assets.dart';
import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/styles.dart';

import 'config/strings.dart';
import 'screens/home/homescreen.dart';

class BottomMenuTabs extends StatefulWidget {
  const BottomMenuTabs({Key? key}) : super(key: key);

  static const String routeName = "Tabs";

  @override
  State<BottomMenuTabs> createState() => _BottomMenuTabsState();
}

class _BottomMenuTabsState extends State<BottomMenuTabs> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Material(
          elevation: 4,
          child: Container(
            height: 96,
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.2),
                  offset: const Offset(0, -4),
                  blurRadius: 24,
                  //blurStyle: BlurStyle.inner,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                // alignment: Alignment.center,
                child: (TabBar(
                  labelColor: AppColors.white,
                  indicatorColor: AppColors.primaryColor,
                  unselectedLabelColor: Colors.transparent,
                  labelPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  onTap: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  tabs: [
                    //home
                    Tab(
                      icon: currentIndex == 0
                          ? Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.home,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.home,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.home,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.hintTextColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.home,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.hintTextColor),
                                ),
                              ],
                            ),
                    ),
                    Tab(
                      icon: currentIndex == 1
                          ? Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.explore,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.explore,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.explore,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.hintTextColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.explore,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.hintTextColor),
                                ),
                              ],
                            ),
                    ), // Custom widget for spacing in center

                    Tab(
                      icon: currentIndex == 2
                          ? Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.viaggi,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.more,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.viaggi,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.hintTextColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.more,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.hintTextColor),
                                ),
                              ],
                            ),
                    ),
                    Tab(
                      icon: currentIndex == 3
                          ? Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.profile,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  AppStrings.profile,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.profile,
                                  colorFilter: const ColorFilter.mode(
                                    AppColors.hintTextColor,
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  AppStrings.profile,
                                  style: text2TextStyle10.copyWith(
                                      color: AppColors.hintTextColor),
                                ),
                              ],
                            ),
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
