import 'package:flutter/material.dart';

class ProfilePageAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Profile"),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
