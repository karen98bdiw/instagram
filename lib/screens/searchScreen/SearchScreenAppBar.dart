import 'package:flutter/material.dart';

class SearchScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Search"),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
