import 'package:flutter/material.dart';

import '../widgets/HomePageAppBar.dart';
import '../widgets/StoryesList.dart';
import '../widgets/PostWidget.dart';

class HomePage extends StatelessWidget {
  static final appBar = HomePageAppBar();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        child: Column(
          children: [StoryiesList(), Post(), Post()],
        ));
  }
}
