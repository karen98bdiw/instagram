import 'package:flutter/material.dart';
import './AddScreenAppBar.dart';

class AddScreen extends StatelessWidget {
  static final appBar = AddScreenAppBar();
  PreferredSizeWidget get getAppBar {
    return appBar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Add Page"),
      ),
    );
  }
}
