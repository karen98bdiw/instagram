import 'package:flutter/material.dart';

class CapturePageAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Capture"),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
