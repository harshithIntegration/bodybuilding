import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Sponser.dart';
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
        backgroundColor: const Color.fromARGB(255, 39, 38, 38),
        foregroundColor: Colors.white,
        centerTitle: true,        
        titleSpacing: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/body_logo.png',
                height: 50, 
                width: 60, 
              ),
            ),
            const SizedBox(width: 8), 
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
              aspectRatio: 16 / 9,
              child: Image.asset(
                'assets/first_page.jpg',
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(
                            'assets/111.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'PREJUDGEMENT ROUND',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(
                            'assets/222.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'MR & MS INDIA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
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
                        color: Colors.grey[200], 
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
                    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                        Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

                    
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
                       Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
    
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Sponser()),
    );
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
                        Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                       Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                       Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                       Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                        Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                       Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

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
                   Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );

              },
            ),
          ],
        ),
      ),
    );
  }
}

