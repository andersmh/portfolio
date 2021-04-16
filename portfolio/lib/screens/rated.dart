import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class Rated extends StatefulWidget {
  @override
  _RatedState createState() => _RatedState();
}

class _RatedState extends State<Rated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'Rated: Rate Anything',
        titleColor: Color(0xFF06BEB6),
        text:
            'A personal rating keeper.\nThe app lets you rate food, drinks, items\nor anything you want throughout your travels!\n',
        logo: 'assets/rated.png',
        illustration1: 'assets/rated/illustration_1.png',
        illustration2: 'assets/rated/illustration_2.png',
        policy: '',
        terms: '',
        email: 'rated.app@gmail.com',
      ),
    );
  }
}
