import 'package:developermatic_kit/components/appbar.dart';
import 'package:developermatic_kit/config/assets.dart';

import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/strings.dart';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static String routeName = '/profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppBar(
        assetPath: SvgAssets.backArrow,
        title: AppStrings.appTitle,
        onLeadingTap: () {},
      ),
      body: Container(),
    );
  }
}
