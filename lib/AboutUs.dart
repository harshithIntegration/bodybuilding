// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:globalphysiqueexpo/Dashboard.dart';

// class AboutUsPage extends StatelessWidget {
//   const AboutUsPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'About Us',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromARGB(255, 255, 197, 22),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           color: Colors.white,
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => const Dashboard()),
//             );
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Color.fromARGB(255, 255, 255, 255),
//           ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(
//                       3), // Optional: Adjust padding as needed
//                   child: const Text(
//                     'WELCOME TO UIBFF',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                       color: Color.fromARGB(255, 39, 38, 38), 
//                     ),
//                   ),
//                 ),
//               ),
//                const SizedBox(height: 5),
//               AspectRatio(
//                 aspectRatio: 16 / 9,
//                 child: Image.asset(
//                   'assets/first_page.jpg', // Replace with your image path
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Text(
//                   'At the Global Physique Expo, we celebrate the dedication, discipline, and determination of individuals who strive to sculpt their bodies into works of art.',
//                   style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Color.fromARGB(255, 39, 38, 38)),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.grey[200],
//                   boxShadow: [
//                     BoxShadow(
//                       color: const Color.fromARGB(255, 219, 215, 215)
//                           .withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 4,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Flexible(
//                       flex: 2,
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.asset(
//                             'assets/andre.jpg',
//                             fit: BoxFit.cover,
//                             width: 220,
//                             height: 220,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Expanded(
//                       flex: 3,
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'ANDRE’ BOTHA',
//                               style: TextStyle(
//                                 fontSize: 18.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Text(
//                               'Andre’ Botha is proud to be the founder and president of UIBFF. I have not been happy with the way I see bodybuilding and other strength sports is heading and decided to start UIBFF',
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/Jagjit.jpg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'JAGJIT SINGH',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'UIBFF PRESIDENT',
//                           style: TextStyle(
//                             fontSize: 9,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/varun.jpg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'Varun Varma',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'VICE PRESIDENT (Event Promoter)',
//                           style: TextStyle(
//                             fontSize: 9,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   child: const Text(
//                     'EVENTS',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                       color: Color.fromARGB(255, 39, 38, 38),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/one.jpg',
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/two.jpg',
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/three.jpg',
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/four.jpg',
//                           width: 100,
//                           height: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   child: const Text(
//                     'UIBFF INDIA',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                       color: Color.fromARGB(255, 39, 38, 38),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/first.jpg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'NITESHCHHIBBER',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'PRESIDENT(UIBFF INDIA)',
//                           style: TextStyle(
//                             fontSize: 9,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/second.jpeg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'SIDDHU YADAV',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'PRESIDENT(UIBFF KARNATAKA)',
//                           style: TextStyle(
//                             fontSize: 9,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/third.jpeg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'HIMADRI ADHIKARI',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'VICE PRESIDENT(UIBFF KARNATAKA)',
//                           style: TextStyle(
//                             fontSize: 8,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           'assets/fourth.jpeg',
//                           width: 180,
//                           height: 180,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 5),
//                         const Text(
//                           'HARISH GOWDA',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                         const Text(
//                           'SECRETARY (UIBFF KARNATAKA)',
//                           style: TextStyle(
//                             fontSize: 9,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 39, 38, 38),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 5),
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   child: const Text(
//                     'SPONSORS',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Color.fromARGB(255, 39, 38, 38),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   autoPlayInterval: const Duration(seconds: 3),
//                   autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                   enableInfiniteScroll: true,
//                   viewportFraction: 0.8,
//                   aspectRatio: 16 / 9,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: [
//                   'assets/new.png',
//                   'assets/sp2.png',
//                   'assets/sp4.png',
//                   'assets/sp5.png',
//                   'assets/sp7.png',
//                   'assets/new1.png',
//                   'assets/sp9.png',
//                 ].map((item) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: AssetImage(item),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }).toList(),
//               ), 
//               const SizedBox(height: 5),
//               Center(
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   child: const Text(
//                     'SOCIAL MEDIA PARTNER',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Color.fromARGB(255, 39, 38, 38),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   autoPlayInterval: const Duration(seconds: 3),
//                   autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                   enableInfiniteScroll: true,
//                   viewportFraction: 0.8,
//                   aspectRatio: 16 / 9,
//                   scrollDirection: Axis.horizontal,
//                 ),
//                 items: [
//                   'assets/m1.png',
//                   'assets/m2.png',
//                   'assets/m3.png',
//                   'assets/m4.jpg',
//                   'assets/m5.jpg',
//                   'assets/m6.png',
//                   'assets/m7.jpg',
//                   'assets/m8.png',
//                   'assets/m9.jpg',
//                   'assets/m10.png',
//                 ].map((item) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: AssetImage(item),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }).toList(),
//               ),
//             ],
//           ),
//         ),
//       ),
//       ),
//     );
//   }
// }















import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 233, 216, 167),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
  aspectRatio: 16 / 9,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      'assets/body2.jpg', // Replace with your image path
      fit: BoxFit.cover,
    ),
  ),
),

              SizedBox(height: 15,),
                  SizedBox(height: 10),
                  const Text(
                    '➤  Welcome to the Global Physique Expo',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

Column(
  children: [
    const SizedBox(height: 20),
    Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 219, 215, 215).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'At the Global Physique Expo, we celebrate the dedication, discipline ,     and determination of individuals who strive to sculpt their bodies into works of art. ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Center(
                  child: Image.asset(
                    'assets/darshan_sir.jpeg',
                    fit: BoxFit.cover,
                    width: 220,
                    height: 220,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ],
),

                  SizedBox(height: 10),

                  SizedBox(height: 10),
                  const Text(
                    '➤  Welcome to the World Digital Meetup',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

Column(
  children: [
    const SizedBox(height: 20),
    Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 219, 215, 215)
                .withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/siddu.jpeg',
                  fit: BoxFit.cover,
                  width: 220,
                  height: 220,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dolor sit amet consectetur elit sed do eiusmod tempor incd idunt labore et dolore magna aliqua enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
const SizedBox(height: 20),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCard('assets/himadri.jpeg', "HIMADRI ADHIKARI\nVC.PRESIDENT KARNATKA"),
          _buildCard('assets/jagjit.jpg', "JAGJIT SINGH\nUIBFF PRESIDENT               "),
          _buildCard('assets/nitesh.jpeg', "NITESH CHHIBBER\nUIBFF PRESIDENT INDIA        "),
          _buildCard('assets/andre.jpg', "ANDRE’ BOTHA\nUIBFF GLOBAL PRESIDENT"),

        ],
        ),
    ),
  ],
),



              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.5,
                  aspectRatio: 16 / 10,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/100.gif',
                  'assets/b2.gif',
                  'assets/b1.gif',
                  'assets/101.gif',
                  'assets/b5.gif',
                  'assets/b4.gif',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

SizedBox(height: 20),
buildVisionStatement(),
SizedBox(height: 20),
MissionStatement(),

 AspectRatio(
  aspectRatio: 16/17,
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.asset(
      'assets/101.gif', // Replace with your image path
      fit: BoxFit.cover,
    ),
  ),
),





              const SizedBox(height: 20),
              
                 Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    '  OFFICIAL SPONSORS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                  ),
                ),
              




              
              const SizedBox(height: 15),
              
                Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    '➤  Supporting Sponsors',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                  ),
                ),
              
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  aspectRatio: 16 / 9,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/supporting1.png',
                  'assets/supporting2.jpg',
                  'assets/supporting3.png',
                  'assets/supporting4.jpg',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ), 

              const SizedBox(height: 35),
              
               Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    '➤  SILVER SPONSORS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                  ),
                ),
              
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  aspectRatio: 16 / 7,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/silver1.png',
                  'assets/silver2.png',
                  'assets/silver3.png',
                  'assets/silver4.png',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ), 



              const SizedBox(height: 35),
              Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    '➤  PLATINUM SPONSORS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                  ),
                ),
              
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  aspectRatio: 16 / 7,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/platinum1.png',
                  'assets/platinum2.png',
                  'assets/platinum3.png',
                  'assets/platinum4.png',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ), 

              const SizedBox(height: 35),
               Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    '➤  B2B SPONSORS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 39, 38, 38),
                    ),
                  ),
                ),
              
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  aspectRatio: 16 / 7,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  'assets/silver1.png',
                  'assets/silver2.png',
                  'assets/silver3.png',
                  'assets/silver4.png',
                ].map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ), 

buildFooter(),

            ],
          ),
        ),
      ),
      ),
    );
  }
}



  Widget buildFooter() {
    
    return Container(
      
      color: Colors.blue[50],
      padding: EdgeInsets.all(10.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
                        Center(
                          child: Image.asset(
                                          'assets/logo.png', // Replace with your image path
                                          width: 200, // Set the width of the image
                                          height: 200, // Set the height of the image
                                        ),
                        ),

       const   Row(
            children: [
               SizedBox(width: 16), // Space between image and text
               Expanded(
                child: Text(
'Join the Global Physique Expo for thrilling competitions, expert workshops, new product reveals, and celebrity guests. Fitness excitement awaits!',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),      

      
            const    SizedBox(height: 20),
const Text(
  '➣  Instagram Gallery',
  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10),
GridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: 6, // Number of images in the gallery
  itemBuilder: (context, index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12), // Adjust the radius to change the curve
      child: Image.asset(
        'assets/b${index + 1}.gif',
        fit: BoxFit.cover,
      ),
    );
  },
),
                    
         const SizedBox(height: 30),
       const  Text(
            ' Contact Us',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
       const   SizedBox(height: 15),
      const  Row(
                children: [
                  Icon(Icons.access_time_filled, size: 15),
                  SizedBox(width: 8),
                  Text('Mon – Fri : 09:30 – 18:30'),
                ],
              ),
                       const     SizedBox(height: 8),

       const  Row(
                children: [
                  Icon(Icons.phone_in_talk_outlined, size: 15),
                  SizedBox(width: 8),
                  Text('+91 9606445493'),
                ],
              ),
          const    SizedBox(height: 8),
           const   Row(
                children: [
                  Icon(Icons.email,size: 15),
                  SizedBox(width: 8),
                  Text('info@globalphysiqueexpo.com'),
                ],
              ),
          const    SizedBox(height: 8),
           const   Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.language_rounded,size: 16),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text('#49 Ravish Gardenia Layout Vaderahalli, Bengaluru, Karnataka 560097'),
                  ),
                ],
              ),        
        ],
      ),
    );
  }











Widget _buildCard(String imagePath, String text) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 85,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(height: 16),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


Widget buildVisionStatement() {
  return Container(
    margin: const EdgeInsets.all(16.0),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            '➤  OUR VISION',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Established with a vision to elevate the sport of bodybuilding, the Global Physique Expo is renowned for its integrity, fairness, and professionalism. We adhere to the highest standards of judging and ensure a level playing field for all competitors, regardless of their experience or background.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 17,
            color: Colors.black87,
            height: 1.6,
          ),
        ),
      ],
    ),
  );
}

class MissionStatement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              '➤  OUR MISSION',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Our mission is to provide a platform where bodybuilders from all walks of life can come together to showcase their physique, dedication, and passion for fitness. We aim to promote a culture of health, fitness, and sportsmanship while inspiring individuals to push their limits and achieve their personal best.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black87,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}