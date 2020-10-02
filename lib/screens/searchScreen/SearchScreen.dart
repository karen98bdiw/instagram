import 'package:flutter/material.dart';

import './SearchScreenAppBar.dart';

class SearchScreen extends StatelessWidget {
  static final appBar = SearchScreenAppBar();
  PreferredSizeWidget get getAppBar {
    return appBar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Search Page"),
      ),
    );
  }
}
