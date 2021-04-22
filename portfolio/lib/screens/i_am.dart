import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class IAm extends StatefulWidget {
  @override
  _IAmState createState() => _IAmState();
}

class _IAmState extends State<IAm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'I am: A Gratitude Journal',
        titleColor: Color(0xFF754FF5),
        text:
            'Need to implement\n',
        logo: 'assets/i_am.png',
        illustration1: 'assets/i_am/illustration_1.png',
        illustration2: 'assets/i_am/illustration_2.png',
        policy: '',
        terms: '',
        email: 'iam.app@gmail.com',
      ),
    );
  }
}
