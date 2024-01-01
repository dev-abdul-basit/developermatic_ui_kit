import 'package:developermatic_kit/components/appbar.dart';
import 'package:developermatic_kit/config/assets.dart';
import 'package:developermatic_kit/config/strings.dart';
import 'package:developermatic_kit/utils/drawer.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        assetPath: SvgAssets.drawer,
        onLeadingTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        title: AppStrings.appTitle,
      ),
      drawer: const AppDrawer(),
      body: const Body(),
    );
  }
}
