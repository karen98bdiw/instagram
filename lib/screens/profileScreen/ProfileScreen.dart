import 'package:flutter/material.dart';
import 'ProfilePageAppBar.dart';

class ProfileScreen extends StatelessWidget {
  static final appBar = ProfilePageAppBar();
  PreferredSizeWidget get getAppBar {
    return appBar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
