import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:developermatic_kit/config/colors.dart';

import 'package:developermatic_kit/config/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //final String title;
  final VoidCallback? onLeadingTap;
  final String? title;
  final String? assetPath;

  const CustomAppBar({
    Key? key,
    //required this.title,
    this.onLeadingTap,
    this.title,
    this.assetPath,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: Material(
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
          onTap: onLeadingTap ?? () => Navigator.of(context).pop(),
          child: SvgPicture.asset(
            assetPath!,
            fit: BoxFit.scaleDown,
            color: AppColors.black,
          ),
        ),
      ),
      title: Text(
        title!,
        style: h1Bold26Black.copyWith(fontWeight: FontWeight.normal),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
