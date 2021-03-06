import 'package:flutter/material.dart';

import '../widgets/DirectPageAppBar.dart';

class DirectPage extends StatelessWidget {
  static final appBar = DirectPageAppBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8, left: 10, right: 10, bottom: 15),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor)),
              prefixIcon: Icon(Icons.find_in_page),
              hintText: "Find",
            ),
          ),
        )
      ],
    );
  }
}
