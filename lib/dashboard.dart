import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'dart:async';
import 'package:globalphysiqueexpo/AboutUs.dart';
import 'package:globalphysiqueexpo/Category/Mens.dart';
import 'package:globalphysiqueexpo/Category/Womens.dart';
import 'package:globalphysiqueexpo/ContactUs.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/ClassicPhysique.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/MenPhysique.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/MensBodybuilding.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/MensHandicap.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/MensMaster.dart';
import 'package:globalphysiqueexpo/RuelsandRegulation/Men/MensWheelchair.dart';
import 'package:globalphysiqueexpo/Sponser.dart';
import 'package:globalphysiqueexpo/gallery.dart';

void main() => runApp(const Dashboard());

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  final DateTime targetDate = DateTime(2024, 11, 21);
  late Duration remainingTime;
  late Timer timer;
  final advancedDrawerController = AdvancedDrawerController();

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    updateRemainingTime();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        updateRemainingTime();
      });
    });

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void updateRemainingTime() {
    final now = DateTime.now();
    if (now.isBefore(targetDate)) {
      remainingTime = targetDate.difference(now);
    } else {
      remainingTime = Duration.zero;
    }
  }

  @override
  void dispose() {
    timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  void openDrawer() {
    _animationController.forward();
  }

  void closeDrawer() {
    _animationController.reverse();
  }

  String formatDurationPart(int value) {
    return value.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    var selectedItem;
    return AdvancedDrawer(
      controller: advancedDrawerController,
      backdropColor: Colors.white,
      animationCurve: Curves.linear,
      animationDuration: const Duration(milliseconds: 700),
      drawer: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 300,
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Global Physique Expo',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: Text(
                  'ABOUT US',
                  style: TextStyle(
                    color: selectedItem == 'ABOUT US'
                        ? Colors.black
                        : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.info),
                onTap: () {
                  setState(() {
                    selectedItem = 'ABOUT US';
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutUsPage()),
                  );
                },
              ),
              ExpansionTile(
                title: Text(
                  'CATEGORIES',
                  style: TextStyle(
                    color: selectedItem == 'CATEGORIES'
                        ? Colors.black
                        : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.category),
                children: [
                  ListTile(
                    title: Text(
                      'Mens',
                      style: TextStyle(
                        color: selectedItem == 'Mens'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Mens';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Mens()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Womens',
                      style: TextStyle(
                        color: selectedItem == 'Womens'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Womens';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Womens()),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'SPONSORSHIP',
                  style: TextStyle(
                    color: selectedItem == 'SPONSORSHIP'
                        ? Colors.black
                        : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.attach_money),
                onTap: () {
                  setState(() {
                    selectedItem = 'SPONSORSHIP';
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Sponser()),
                  );
                },
              ),
              ExpansionTile(
                title: Text(
                  'RULES & REGULATION',
                  style: TextStyle(
                    color: selectedItem == 'RULES & REGULATION'
                        ? Colors.black
                        : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.rule),
                children: [
                  ListTile(
                    title: Text(
                      'Men\'s Bodybuilding',
                      style: TextStyle(
                        fontSize: 14,
                        color: selectedItem == 'Men\'s Bodybuilding'
                            ? Colors.black
                            : Colors.black,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Men\'s Bodybuilding';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MensBodybuilding()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Men\'s Master',
                      style: TextStyle(
                        color: selectedItem == 'Men\'s Master'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Men\'s Master';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MensMaster()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Men\'s Physique',
                      style: TextStyle(
                        color: selectedItem == 'Men\'s Physique'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Men\'s Physique';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MenPhysique()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Classic Physique',
                      style: TextStyle(
                        color: selectedItem == 'Classic Physique'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Classic Physique';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ClassicPhysique()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Men\'s Wheelchair',
                      style: TextStyle(
                        color: selectedItem == 'Men\'s Wheelchair'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Men\'s Wheelchair';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenWheelchair()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Men\'s Handicap',
                      style: TextStyle(
                        color: selectedItem == 'Men\'s Handicap'
                            ? Colors.black
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        selectedItem = 'Men\'s Handicap';
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MenHandicap()),
                      );
                    },
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'GALLERY',
                  style: TextStyle(
                    color:
                        selectedItem == 'GALLERY' ? Colors.black : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.photo_library),
                onTap: () {
                  setState(() {
                    selectedItem = 'GALLERY';
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Gallery()),
                  );
                },
              ),
              ListTile(
                title: Text(
                  'CONTACT',
                  style: TextStyle(
                    color:
                        selectedItem == 'CONTACT' ? Colors.black : Colors.black,
                  ),
                ),
                leading: const Icon(Icons.contact_phone),
                onTap: () {
                  setState(() {
                    selectedItem = 'CONTACT';
                  });
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ContactPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              print('hi');
              advancedDrawerController.showDrawer();
            },
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          centerTitle: true, // Set centerTitle to false
          titleSpacing: 0,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 50,
                  width: 60,
                ),
              ),
              const SizedBox(width: 8),
              const Flexible(
                child: Text(
                  'GLOBAL PHYSIQUE APP',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  overflow:
                      TextOverflow.ellipsis, // Handle overflow by ellipsis
                ),
              ),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: closeDrawer,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    // Countdown timer in rounded square blocks
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildRoundedSquare(
                              formatDurationPart(remainingTime.inDays),
                              'Days',
                              Colors.pink),
                          buildRoundedSquare(
                              formatDurationPart(remainingTime.inHours % 24),
                              'Hours',
                              Colors.blue),
                          buildRoundedSquare(
                              formatDurationPart(remainingTime.inMinutes % 60),
                              'Minutes',
                              Colors.yellow),
                          buildRoundedSquare(
                              formatDurationPart(remainingTime.inSeconds % 60),
                              'Seconds',
                              Colors.purple),
                        ],
                      ),
                    ),
                    // Register Now button
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          child: const Text(
                            'Register Now',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: 170.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage('assets/1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 5.0,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'WELCOME TO UIBFF',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'At the Global Physique Expo, we celebrate the dedication, discipline, and determination of individuals who strive to sculpt their bodies into works of art. Whether you’re a seasoned competitor or stepping onto the stage for the first time, our platform provides an unparalleled opportunity to showcase your hard work and commitment to the pursuit of physical excellence.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 200.0,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                        ),
                        items: [
                          'assets/1.jpg',
                          'assets/2.jpg',
                          'assets/3.jpg',
                          'assets/6.jpg',
                          'assets/7.jpg',
                        ].map((assetPath) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage(assetPath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Offcial Sponsors',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Supporting Partner',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/sp2.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp4.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp5.png',
                                  width: 100, height: 100),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Platinum Sponsors',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/sp2.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp4.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp5.png',
                                  width: 100, height: 100),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Gold Sponsors',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/sp2.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp4.png',
                                  width: 100, height: 100),
                              Image.asset('assets/sp5.png',
                                  width: 100, height: 100),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRoundedSquare(String value, String label, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: CustomPaint(
      painter: RoundedSquarePainter(color),
      child: SizedBox(
        width: 80,
        height: 92,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class RoundedSquarePainter extends CustomPainter {
  final Color color;

  RoundedSquarePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    RRect rRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      const Radius.circular(10),
    );

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}