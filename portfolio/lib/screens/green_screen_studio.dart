import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class GreenScreenStudio extends StatefulWidget {
  @override
  _GreenScreenStudioState createState() => _GreenScreenStudioState();
}

class _GreenScreenStudioState extends State<GreenScreenStudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'Green Screen: Studio',
        titleColor: Color(0xFF33DE00),
        text: 'Not Yet Implemented.\n',
        logo: 'assets/green_screen_studio.png',
        illustration1: 'assets/green_screen_studio/illustration_1.png',
        illustration2: 'assets/green_screen_studio/illustration_2.png',
        policy: '',
        terms: '',
        email: 'greenscreen.app@gmail.com',
      ),
    );
  }
}
