import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class TimeToDeath extends StatefulWidget {
  @override
  _TimeToDeathState createState() => _TimeToDeathState();
}

class _TimeToDeathState extends State<TimeToDeath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F4F9),
        body: AdaptableLayout(
          title: 'Time To Death: Visualiser',
          titleColor: Colors.blue,
          text:
              'Gain prospective of how much time you have left\non this earth with Time To Death: Visualiser!\nThe best app for visualising the remaining\ntime on this earth!',
          illustration1: 'assets/time_to_death/illustration_1.png',
          illustration2: 'assets/time_to_death/illustration_2.png',
          email: 'Time To Death: Visualise',
          logo: 'assets/time_to_death.png',
          policy: '',
          terms: '',
        ));
  }
}
