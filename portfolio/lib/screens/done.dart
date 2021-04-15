import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'Done.',
        text: 'Not Yet Implemented.\n',
        logo: 'assets/done.png',
        illustration1: 'assets/done/illustration_1.png',
        illustration2: 'assets/done/illustration_2.png',
        policy: '',
        terms: '',
        email: 'done.app@gmail.com',
      ),
    );
  }
}
