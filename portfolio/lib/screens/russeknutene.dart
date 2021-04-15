import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class Russeknutene extends StatefulWidget {
  @override
  _RusseknuteneState createState() => _RusseknuteneState();
}

class _RusseknuteneState extends State<Russeknutene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'Russeknutene',
        text:
            'Norge største russeknuteknokuranse!\nKonkurer mot naboskoler eller hele norge.\nGjør Kong Harald stolt!\n',
        logo: 'assets/russeknutene.png',
        illustration1: 'assets/russeknutene/illustration_1.png',
        illustration2: 'assets/russeknutene/illustration_2.png',
        policy: '',
        terms: 'terms',
        email: 'russeknutene.app@gmail.com',
      ),
    );
  }
}
