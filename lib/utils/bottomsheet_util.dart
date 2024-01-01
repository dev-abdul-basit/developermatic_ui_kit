import 'package:flutter/material.dart';

class BottomSheetUtil {
  static void showBottomSheet(BuildContext context, Widget widget) {
    showModalBottomSheet(
      context: context,
      elevation: 38,
      showDragHandle: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.5),
      //useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      builder: (context) {
        return widget;
      },
    );
  }
}
