import 'package:flutter/material.dart';
import 'package:portfolio/dashboard.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/done.dart';
import 'package:portfolio/screens/green_screen_studio.dart';
import 'package:portfolio/screens/rated.dart';
import 'package:portfolio/screens/russeknutene.dart';
import 'package:portfolio/screens/slurk.dart';
import 'package:portfolio/screens/time_to_death.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Dashboard(),
        '/done': (context) => Done(),
        '/greenscreenstudio': (context) => GreenScreenStudio(),
        '/rated': (context) => Rated(),
        '/russeknutene': (context) => Russeknutene(),
        '/slurk': (context) => Slurk(),
        '/timetodeath': (context) => TimeToDeath(),
        '/contact': (context) => Contact(),
      },
      initialRoute: '/',
    );
  }
}
