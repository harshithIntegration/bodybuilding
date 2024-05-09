import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String? _selectedItem;

final List<String> _imagePaths = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/11.jpg',
    'assets/12.jpg',
  ];
      @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Color.fromARGB(255, 39, 38, 38),
  foregroundColor: Colors.white,
  titleSpacing: 0,
  title: Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Image.asset(
          'assets/body_logo.png', // Replace with your app logo image path
          height: 50, // Adjust height as needed
          width: 60, // Adjust width as needed
        ),
      ),
      const SizedBox(width: 8), // Adjust spacing between logo and title
      const Text(
        'GLOBAL PHYSIQUE APP',
        style: TextStyle(fontSize: 20),
      ),
    ],
  ),
),     
 body: SingleChildScrollView(
  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9, // Adjust aspect ratio as needed
              child: Image.asset(
                'assets/first_page.jpg', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            
  Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        _imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),

                  );
                },
              ),
            ),             
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(
          'assets/111.jpg', // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit property
          height: 200, // Adjust height as needed
        ),
      ),
    ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Image.asset(
          'assets/222.jpg', // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit property
          height: 200, // Adjust height as needed
        ),
      ),
    ),

  ],
),


          ],
        ),
      ),
        
      
     drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 160,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[200], // Placeholder color
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/body_logo.png',
                            height: 110,
                            width: 200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'HOME',
                style: TextStyle(
                  color: _selectedItem == 'HOME' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _selectedItem = 'HOME';
                });
              },
            ),
            ListTile(
              title: Text(
                'ABOUT US',
                style: TextStyle(
                  color: _selectedItem == 'ABOUT US' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.info),
              onTap: () {
                setState(() {
                  _selectedItem = 'ABOUT US';
                });
                // Navigate to about us screen
              },
            ),
            ExpansionTile(
              title: Text(
                'CATEGORIES',
                style: TextStyle(
                  color: _selectedItem == 'CATEGORIES' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.category),
              children: [
                ListTile(
                  title: Text(
                    'Mens',
                    style: TextStyle(
                      color: _selectedItem == 'Mens' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Mens';
                    });
                    // Navigate to Mens categories screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Womens',
                    style: TextStyle(
                      color: _selectedItem == 'Womens' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Womens';
                    });
                    // Navigate to Womens categories screen
                  },
                ),
              ],
            ),
            ListTile(
              title: Text(
                'SPONSORSHIP',
                style: TextStyle(
                  color: _selectedItem == 'SPONSORSHIP' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.attach_money),
              onTap: () {
                setState(() {
                  _selectedItem = 'SPONSORSHIP';
                });
                // Navigate to sponsorship screen
              },
            ),
            ExpansionTile(
              title: Text(
                'RULES & REGULATION',
                style: TextStyle(
                  color: _selectedItem == 'RULES & REGULATION' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.rule),
              children: [
                ListTile(
                  title: Text(
                    'Men\'s Bodybuilding',
                    style: TextStyle(
                      fontSize: 14,
                      color: _selectedItem == 'Men\'s Bodybuilding' ? Colors.red : Colors.black,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Men\'s Bodybuilding';
                    });
                    // Navigate to Men's Bodybuilding rules screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Men\'s Master',
                    style: TextStyle(
                      color: _selectedItem == 'Men\'s Master' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Men\'s Master';
                    });
                    // Navigate to Men's Master rules screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Men\'s Physique',
                    style: TextStyle(
                      color: _selectedItem == 'Men\'s Physique' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Men\'s Physique';
                    });
                    // Navigate to Men's Physique rules screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Classic Physique',
                    style: TextStyle(
                      color: _selectedItem == 'Classic Physique' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Classic Physique';
                    });
                    // Navigate to Classic Physique rules screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Men\'s Wheelchair',
                    style: TextStyle(
                      color: _selectedItem == 'Men\'s Wheelchair' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Men\'s Wheelchair';
                    });
                    // Navigate to Men's Wheelchair rules screen
                  },
                ),
                ListTile(
                  title: Text(
                    'Men\'s Handicap',
                    style: TextStyle(
                      color: _selectedItem == 'Men\'s Handicap' ? Colors.red : Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = 'Men\'s Handicap';
                    });
                    // Navigate to Men's Handicap rules screen
                  },
                ),
              ],
            ),
            ListTile(
              title: Text(
                'GALLERY',
                style: TextStyle(
                  color: _selectedItem == 'GALLERY' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.photo_library),
              onTap: () {
                setState(() {
                  _selectedItem = 'GALLERY';
                });
                // Navigate to gallery screen
              },
            ),
            ListTile(
              title: Text(
                'CONTACT',
                style: TextStyle(
                  color: _selectedItem == 'CONTACT' ? Colors.red : Colors.black,
                ),
              ),
              leading: Icon(Icons.contact_phone),
              onTap: () {
                setState(() {
                  _selectedItem = 'CONTACT';
                });
                // Navigate to contact screen
              },
            ),
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';

// class Dashboard extends StatefulWidget {
//   const Dashboard({Key? key}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   String? _selectedItem;

//   // Dummy image paths
//   final List<String> _imagePaths = [
//     'assets/1.jpg',
//     'assets/2.jpg',
//     'assets/3.jpg',
//     'assets/4.jpg',
//     'assets/5.jpg',
//     'assets/6.jpg',
//     'assets/7.jpg',
//     'assets/8.jpg',
//     'assets/9.jpg',
//     'assets/10.jpg',
//     'assets/11.jpg',
//     'assets/12.jpg',
//     'assets/13.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 39, 38, 38),
//         foregroundColor: Colors.white,
//         titleSpacing: 0,
//         title: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 8.0),
//               child: Image.asset(
//                 'assets/body_logo.png', // Replace with your app logo image path
//                 height: 50, // Adjust height as needed
//                 width: 60, // Adjust width as needed
//               ),
//             ),
//             const SizedBox(width: 8), // Adjust spacing between logo and title
//             const Text(
//               'GLOBAL PHYSIQUE APP',
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         color: Colors.black, // Set background color to black
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               AspectRatio(
//                 aspectRatio: 16 / 9, // Adjust aspect ratio as needed
//                 child: Image.asset(
//                   'assets/first_page.jpg', // Replace with your image path
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               // Horizontal scrolling list of images
//               Container(
//                 height: 250, // Adjust the height of the horizontal list
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: _imagePaths.length,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Image.asset(
//                         _imagePaths[index],
//                         height: 120, // Adjust the height of each image
//                         width: 120, // Adjust the width of each image
//                         fit: BoxFit.cover,
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: Text(
//                   'Your Content Here',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: const BoxDecoration(
//                 color: Colors.amber,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                     child: Container(
//                       width: 160,
//                       height: 130,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey[200], // Placeholder color
//                       ),
//                       child: Center(
//                         child: ClipOval(
//                           child: Image.asset(
//                             'assets/body_logo.png',
//                             height: 110,
//                             width: 200,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 'HOME',
//                 style: TextStyle(
//                   color: _selectedItem == 'HOME' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.home),
//               onTap: () {
//                 setState(() {
//                   _selectedItem = 'HOME';
//                 });
//               },
//             ),
//             ListTile(
//               title: Text(
//                 'ABOUT US',
//                 style: TextStyle(
//                   color: _selectedItem == 'ABOUT US' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.info),
//               onTap: () {
//                 setState(() {
//                   _selectedItem = 'ABOUT US';
//                 });
//                 // Navigate to about us screen
//               },
//             ),
//             ExpansionTile(
//               title: Text(
//                 'CATEGORIES',
//                 style: TextStyle(
//                   color: _selectedItem == 'CATEGORIES' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.category),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'Mens',
//                     style: TextStyle(
//                       color: _selectedItem == 'Mens' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Mens';
//                     });
//                     // Navigate to Mens categories screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Womens',
//                     style: TextStyle(
//                       color: _selectedItem == 'Womens' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Womens';
//                     });
//                     // Navigate to Womens categories screen
//                   },
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text(
//                 'SPONSORSHIP',
//                 style: TextStyle(
//                   color: _selectedItem == 'SPONSORSHIP' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.attach_money),
//               onTap: () {
//                 setState(() {
//                   _selectedItem = 'SPONSORSHIP';
//                 });
//                 // Navigate to sponsorship screen
//               },
//             ),
//             ExpansionTile(
//               title: Text(
//                 'RULES & REGULATION',
//                 style: TextStyle(
//                   color: _selectedItem == 'RULES & REGULATION' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.rule),
//               children: [
//                 ListTile(
//                   title: Text(
//                     'Men\'s Bodybuilding',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: _selectedItem == 'Men\'s Bodybuilding' ? Colors.red : Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Men\'s Bodybuilding';
//                     });
//                     // Navigate to Men's Bodybuilding rules screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Men\'s Master',
//                     style: TextStyle(
//                       color: _selectedItem == 'Men\'s Master' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Men\'s Master';
//                     });
//                     // Navigate to Men's Master rules screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Men\'s Physique',
//                     style: TextStyle(
//                       color: _selectedItem == 'Men\'s Physique' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Men\'s Physique';
//                     });
//                     // Navigate to Men's Physique rules screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Classic Physique',
//                     style: TextStyle(
//                       color: _selectedItem == 'Classic Physique' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Classic Physique';
//                     });
//                     // Navigate to Classic Physique rules screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Men\'s Wheelchair',
//                     style: TextStyle(
//                       color: _selectedItem == 'Men\'s Wheelchair' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Men\'s Wheelchair';
//                     });
//                     // Navigate to Men's Wheelchair rules screen
//                   },
//                 ),
//                 ListTile(
//                   title: Text(
//                     'Men\'s Handicap',
//                     style: TextStyle(
//                       color: _selectedItem == 'Men\'s Handicap' ? Colors.red : Colors.black,
//                       fontSize: 14,
//                     ),
//                   ),
//                   onTap: () {
//                     setState(() {
//                       _selectedItem = 'Men\'s Handicap';
//                     });
//                     // Navigate to Men's Handicap rules screen
//                   },
//                 ),
//               ],
//             ),
//             ListTile(
//               title: Text(
//                 'GALLERY',
//                 style: TextStyle(
//                   color: _selectedItem == 'GALLERY' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.photo_library),
//               onTap: () {
//                 setState(() {
//                   _selectedItem = 'GALLERY';
//                 });
//                 // Navigate to gallery screen
//               },
//             ),
//             ListTile(
//               title: Text(
//                 'CONTACT',
//                 style: TextStyle(
//                   color: _selectedItem == 'CONTACT' ? Colors.red : Colors.black,
//                 ),
//               ),
//               leading: Icon(Icons.contact_phone),
//               onTap: () {
//                 setState(() {
//                   _selectedItem = 'CONTACT';
//                 });
//                 // Navigate to contact screen
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
