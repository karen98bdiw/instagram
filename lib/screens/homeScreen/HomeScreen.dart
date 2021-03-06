// import 'package:flutter/material.dart';

import 'pages/CapturePage.dart';
import 'pages/HomePage.dart';
import 'pages/DirectPage.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   PageController _pageController;

//   @override
//   void initState() {
//     _pageController = PageController(initialPage: 1);
//     super.initState();
//   }

//   void goNextPageCallBack() {
//     _pageController.animateToPage((_pageController.page + 1.0).floor(),
//         duration: Duration(milliseconds: 500), curve: Curves.ease);
//   }

//   void goPreviusPageCallBack() {
//     _pageController.animateToPage((_pageController.page - 1.0).floor(),
//         duration: Duration(milliseconds: 500), curve: Curves.ease);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: PageView(
//       controller: _pageController,
//       scrollDirection: Axis.horizontal,
//       children: [
//         CapturePage(goNextPageCallBack),
//         HomePage(goPreviusPageCallBack, goNextPageCallBack),
//         DirectPage(goPreviusPageCallBack),
//       ],
//     ));
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static PreferredSizeWidget appBar = HomePage.appBar;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;

  var pages = [CapturePage(), HomePage(), DirectPage()];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    print(HomeScreen.appBar);
    return PageView(
      children: pages,
      controller: pageController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
