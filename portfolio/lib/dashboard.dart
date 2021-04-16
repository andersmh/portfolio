import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                            top: 20,
                            left: 20,
                            right: 20,
                            bottom: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Swiper.children(
                                    scrollDirection: Axis.horizontal,
                                    pagination: SwiperPagination(),
                                    children: [
                                      GridView.count(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/timetodeath');
                                            },
                                            child: Image.asset(
                                              'assets/time_to_death.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/russeknutene');
                                            },
                                            child: Image.asset(
                                              'assets/russeknutene.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/rated');
                                            },
                                            child: Image.asset(
                                              'assets/rated.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/done');
                                            },
                                            child: Image.asset(
                                              'assets/done.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  '/green_screen_studio');
                                            },
                                            child: Image.asset(
                                              'assets/green_screen_studio.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/slurk');
                                            },
                                            child: Image.asset(
                                              'assets/slurk.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                      GridView.count(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/timetodeath');
                                            },
                                            child: Image.asset(
                                              'assets/time_to_death.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/russeknutene');
                                            },
                                            child: Image.asset(
                                              'assets/russeknutene.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/rated');
                                            },
                                            child: Image.asset(
                                              'assets/rated.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/done');
                                            },
                                            child: Image.asset(
                                              'assets/done.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  '/green_screen_studio');
                                            },
                                            child: Image.asset(
                                              'assets/green_screen_studio.png',
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/slurk');
                                            },
                                            child: Image.asset(
                                              'assets/slurk.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                      vertical: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'assets/a.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/m.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/h.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/dot.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
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
                                    width: MediaQuery.of(context).size.width <
                                            1400
                                        ? MediaQuery.of(context).size.width *
                                            0.8
                                        : 1400 * 0.8,
                                    height: MediaQuery.of(context).size.width <
                                            1400
                                        ? (MediaQuery.of(context).size.width *
                                                0.8) /
                                            2
                                        : (1400 * 0.8) / 2,
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
                            top: 20,
                            left: 20,
                            bottom: 20,
                            right: 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Swiper.children(
                                    scrollDirection: Axis.horizontal,
                                    pagination: SwiperPagination(),
                                    children: [
                                      Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/timetodeath');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/time_to_death.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/russeknutene');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/russeknutene.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/rated');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/rated.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/done');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/done.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  '/green_screen_studio');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/green_screen_studio.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/slurk');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/slurk.png',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Wrap(
                                        runSpacing: 10,
                                        spacing: 10,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/timetodeath');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/time_to_death.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/russeknutene');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/russeknutene.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/rated');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/rated.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/done');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/done.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  '/green_screen_studio');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/green_screen_studio.png',
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, '/slurk');
                                            },
                                            child: Container(
                                              width: 45,
                                              height: 45,
                                              child: Image.asset(
                                                'assets/slurk.png',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 5,
                                      vertical: 5,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            'assets/a.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/m.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/h.png',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'assets/dot.png',
                                          ),
                                        ),
                                      ],
                                    ),
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
