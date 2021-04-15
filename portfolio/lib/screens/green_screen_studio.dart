import 'package:flutter/material.dart';

class GreenScreenStudio extends StatefulWidget {
  @override
  _GreenScreenStudioState createState() => _GreenScreenStudioState();
}

class _GreenScreenStudioState extends State<GreenScreenStudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}