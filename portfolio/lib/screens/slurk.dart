import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class Slurk extends StatefulWidget {
  @override
  _SlurkState createState() => _SlurkState();
}

class _SlurkState extends State<Slurk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'Slurk',
        titleColor: Color(0xFFEDAF40),
        text: 'Not Yet Implemented.\n',
        logo: 'assets/slurk.png',
        illustration1: 'assets/slurk/illustration_1.png',
        illustration2: 'assets/slurk/illustration_2.png',
        policy: '',
        terms: '',
        email: 'slurk.app@gmail.com',
      ),
    );
  }
}
