import 'package:flutter/material.dart';
import 'package:portfolio/screens/done.dart';
import 'package:portfolio/screens/green_screen_studio.dart';
import 'package:portfolio/screens/rated.dart';
import 'package:portfolio/screens/russeknutene.dart';
import 'package:portfolio/screens/slurk.dart';
import 'package:portfolio/screens/time_to_death.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F4F9),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: MediaQuery.of(context).size.width < 500
              ? const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                )
              : const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 40,
                ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              MediaQuery.of(context).size.width < 500
                  ? Center(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: MediaQuery.of(context).size.width <
                                            500
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.width *
                                            0.8,
                                    width: MediaQuery.of(context).size.width <
                                            500
                                        ? (MediaQuery.of(context).size.width *
                                                0.8) /
                                            1.5
                                        : (MediaQuery.of(context).size.width *
                                                0.8) /
                                            2,
                                    child: Image.asset(
                                      'assets/big_sur.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 40,
                            bottom: 40,
                            right: 40,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Wrap(
                                runSpacing: 20,
                                spacing: 20,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                alignment: WrapAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/timetodeath');
                                    },
                                    child: Image.asset(
                                      'assets/time_to_death.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/russeknutene');
                                    },
                                    child: Image.asset(
                                      'assets/russeknutene.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/rated');
                                    },
                                    child: Image.asset(
                                      'assets/rated.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Done()));
                                    },
                                    child: Image.asset(
                                      'assets/done.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/greenscreenstudio');
                                    },
                                    child: Image.asset(
                                      'assets/green_screen_studio.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/slurk');
                                    },
                                    child: Image.asset(
                                      'assets/slurk.png',
                                      height:
                                          MediaQuery.of(context).size.width <
                                                  500
                                              ? 30
                                              : 50,
                                      width: MediaQuery.of(context).size.width <
                                              500
                                          ? 30
                                          : 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Center(
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: (MediaQuery.of(context).size.width *
                                            0.8) /
                                        2,
                                    child: Image.asset(
                                      'assets/big_sur.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 40,
                            bottom: 40,
                            right: 40,
                            child: Wrap(
                              runSpacing: 30,
                              spacing: 30,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                TimeToDeath()));
                                  },
                                  child: Image.asset(
                                    'assets/time_to_death.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Russeknutene()));
                                  },
                                  child: Image.asset(
                                    'assets/russeknutene.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Rated()));
                                  },
                                  child: Image.asset(
                                    'assets/rated.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Done()));
                                  },
                                  child: Image.asset(
                                    'assets/done.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                GreenScreenStudio()));
                                  },
                                  child: Image.asset(
                                    'assets/green_screen_studio.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Slurk()));
                                  },
                                  child: Image.asset(
                                    'assets/slurk.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Click on one of the app icons to access the app content!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
