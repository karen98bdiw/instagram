import 'package:flutter/material.dart';

class NotesScreenAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Notes"),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
