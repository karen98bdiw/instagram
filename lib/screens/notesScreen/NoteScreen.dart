import 'package:flutter/material.dart';

import './NotesScreenAppBar.dart';

class NotesScreen extends StatelessWidget {
  static final appBar = NotesScreenAppBar();
  PreferredSizeWidget get getAppBar {
    return appBar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Notes Page"),
      ),
    );
  }
}
