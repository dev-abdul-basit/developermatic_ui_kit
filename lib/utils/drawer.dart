import 'package:developermatic_kit/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import 'package:developermatic_kit/config/assets.dart';
import 'package:developermatic_kit/config/colors.dart';
import 'package:developermatic_kit/config/styles.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(350),
        ),
        child: Drawer(
          backgroundColor: AppColors.primaryColor,
          width: MediaQuery.of(context).size.width / 2,
          key: _scaffoldKey,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drawer icon to close the drawer
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 16),
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      SvgAssets.drawer,
                      fit: BoxFit.scaleDown,
                      // color: AppColors.black,
                    ),
                  ),
                ),

                // User info row
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          ImageAssets.img4,
                          width: 48,
                          height: 64,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        'Username',
                        style: h4Bold13Black.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                // Drawer fields
                drawerField(() {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const HomePage(),
                    ),
                  );
                }, 'I miei viaggi', Icons.usb_outlined),
                drawerField(() {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const HomePage(),
                    ),
                  );
                }, 'Notifiche', Icons.notifications_outlined),
                drawerField(() {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: const HomePage(),
                    ),
                  );
                }, 'Preferiti', Icons.favorite_outline),

                // Logout button
                const Spacer(),
                drawerField(() {
                  // Handle logout logic
                }, 'Logout', Icons.exit_to_app),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget drawerField(route, text, icon) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 28),
    child: InkWell(
      onTap: route,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: text1TextStyle13.copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
