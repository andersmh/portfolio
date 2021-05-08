import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:portfolio/widgets/large_icon_element.dart';
import 'package:portfolio/widgets/small_icon_element.dart';

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
          padding: MediaQuery.of(context).size.width < 600
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
              MediaQuery.of(context).size.width < 600
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
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
                                        height: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                600
                                            ? MediaQuery.of(context).size.width
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                        width:
                                            MediaQuery.of(context).size.width <
                                                    600
                                                ? (MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        0.8) /
                                                    1.5
                                                : (MediaQuery.of(context)
                                                            .size
                                                            .width *
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Swiper.children(
                                        scrollDirection: Axis.horizontal,
                                        pagination: SwiperPagination(),
                                        loop: false,
                                        children: [
                                          GridView.count(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 20,
                                            childAspectRatio: 0.65,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/livestreamsimulator');
                                                },
                                                child: SmallIconElement(
                                                  image:
                                                      'assets/live_stream_simulator.png',
                                                  name: 'LiveSim',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/timetodeath');
                                                },
                                                child: SmallIconElement(
                                                  image:
                                                      'assets/time_to_death.png',
                                                  name: 'Time To Death',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/iam');
                                                },
                                                child: SmallIconElement(
                                                  image: 'assets/i_am.png',
                                                  name: 'I am',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/russeknutene');
                                                },
                                                child: SmallIconElement(
                                                  image:
                                                      'assets/russeknutene.png',
                                                  name: 'Russeknutene',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/rated');
                                                },
                                                child: SmallIconElement(
                                                  image: 'assets/rated.png',
                                                  name: 'Rated: Rate Anything.',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/done');
                                                },
                                                child: SmallIconElement(
                                                  image: 'assets/done.png',
                                                  name: 'Done.',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/greenscreenstudio');
                                                },
                                                child: SmallIconElement(
                                                  image:
                                                      'assets/green_screen_studio.png',
                                                  name: 'Green Screen: Studio',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/slurk');
                                                },
                                                child: SmallIconElement(
                                                  image: 'assets/slurk.png',
                                                  name: 'Slurk',
                                                ),
                                              ),
                                            ],
                                          ),
                                          GridView.count(
                                            crossAxisCount: 4,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            childAspectRatio: 0.65,
                                            children: [
                                              SmallIconElement(
                                                image: 'assets/dot.png',
                                                name: 'Nothing Here',
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width >
                                                  500
                                              ? 65
                                              : 55,
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
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/contact');
                                                },
                                                child: Image.asset(
                                                  'assets/contact.png',
                                                ),
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
                        ],
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
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
                                        width: MediaQuery.of(context)
                                                    .size
                                                    .width <
                                                1400
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8
                                            : 1400 * 0.8,
                                        height:
                                            MediaQuery.of(context).size.width <
                                                    1400
                                                ? (MediaQuery.of(context)
                                                            .size
                                                            .width *
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Swiper.children(
                                        scrollDirection: Axis.horizontal,
                                        pagination: SwiperPagination(),
                                        loop: false,
                                        children: [
                                          Wrap(
                                            runSpacing: 20,
                                            spacing: 20,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/livestreamsimulator');
                                                },
                                                child: LargeIconElement(
                                                  image:
                                                      'assets/live_stream_simulator.png',
                                                  name: 'LiveSim',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/timetodeath');
                                                },
                                                child: LargeIconElement(
                                                  image:
                                                      'assets/time_to_death.png',
                                                  name: 'Time To Death',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/iam');
                                                },
                                                child: LargeIconElement(
                                                  image: 'assets/i_am.png',
                                                  name: 'I am',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/russeknutene');
                                                },
                                                child: LargeIconElement(
                                                  image:
                                                      'assets/russeknutene.png',
                                                  name: 'Russeknutene',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/rated');
                                                },
                                                child: LargeIconElement(
                                                  image: 'assets/rated.png',
                                                  name: 'Rated: Rate Anything.',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/done');
                                                },
                                                child: LargeIconElement(
                                                  image: 'assets/done.png',
                                                  name: 'Done.',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      '/greenscreenstudio');
                                                },
                                                child: LargeIconElement(
                                                  image:
                                                      'assets/green_screen_studio.png',
                                                  name: 'Green Screen: Studio',
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/slurk');
                                                },
                                                child: LargeIconElement(
                                                  image: 'assets/slurk.png',
                                                  name: 'Slurk',
                                                ),
                                              ),
                                            ],
                                          ),
                                          Wrap(
                                            runSpacing: 20,
                                            spacing: 20,
                                            children: [
                                              LargeIconElement(
                                                image: 'assets/dot.png',
                                                name: 'Nothing Here',
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
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, '/contact');
                                                },
                                                child: Image.asset(
                                                  'assets/contact.png',
                                                ),
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
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
