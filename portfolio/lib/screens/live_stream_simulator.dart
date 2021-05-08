import 'package:flutter/material.dart';
import 'package:portfolio/widgets/adaptable_layout.dart';

class LiveStreamSimulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: AdaptableLayout(
        title: 'LiveSim: Live Stream Simulator',
        titleColor: Colors.red,
        text: 'Need to implement\n',
        logo: 'assets/live_stream_simulator.png',
        illustration1: 'assets/live_stream_simulator/illustration_1.png',
        illustration2: 'assets/live_stream_simulator/illustration_2.png',
        policy: '',
        terms: '',
        email: 'livestreamsimulator.app@gmail.com',
      ),
    );
  }
}
