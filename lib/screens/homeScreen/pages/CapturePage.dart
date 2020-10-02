import 'package:flutter/material.dart';
import '../widgets/CapturePageAppBar.dart';

class CapturePage extends StatelessWidget {
  static final appBar = CapturePageAppBar();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("capture"),
    );
  }
}
