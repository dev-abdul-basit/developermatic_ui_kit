import 'package:flutter/material.dart';

import 'components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
