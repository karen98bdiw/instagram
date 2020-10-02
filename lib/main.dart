import 'package:flutter/material.dart';

import 'widgets/MyBottomNavigationBar.dart';

import 'screens/addScreen/AddScreen.dart';
import 'screens/homeScreen/HomeScreen.dart';
import 'screens/notesScreen/NoteScreen.dart';
import 'screens/profileScreen/ProfileScreen.dart';
import 'screens/searchScreen/SearchScreen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "instagram",
      home: MyHomeScreen(),
      theme: ThemeData.light().copyWith(
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme().copyWith(
            textTheme: TextTheme(
              title: TextStyle(
                color: Colors.black,
              ),
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
        primaryColor: Colors.grey[100],
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black),
          body2: TextStyle(color: Colors.black),
          title: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<Map<String, Object>> screens = [
    {"screen": HomeScreen(), "appBar": HomeScreen.appBar},
    {"screen": SearchScreen(), "appBar": SearchScreen.appBar},
    {"screen": AddScreen(), "appBar": AddScreen.appBar},
    {"screen": NotesScreen(), "appBar": NotesScreen.appBar},
    {"screen": ProfileScreen(), "appBar": ProfileScreen.appBar}
  ];

  @override
  void initState() {
    super.initState();
  }

  var _curentScreenIndex = 0;

  _onNavItemTapped(int index) {
    setState(() {
      _curentScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: screens[_curentScreenIndex]["appBar"],
      body: screens[_curentScreenIndex]["screen"],
      bottomNavigationBar:
          MyBottomNavigtionBar(_curentScreenIndex, _onNavItemTapped),
    );
  }
}
