import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class MensMaster extends StatefulWidget {
  @override
  _MensMasterState createState() => _MensMasterState();
}

class _MensMasterState extends State<MensMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Men\'s Master Judging and Finals'),
        backgroundColor: const Color.fromARGB(255, 255, 197, 22),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'MEN\'S MASTER JUDGING',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Competitors are judged based on several factors, including muscle size, definition, symmetry, proportion, and stage presence.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '2. Competitors perform a series of mandatory poses to showcase their physique. Judges assess the quality of the poses, including the ability to hit each pose correctly and with confidence.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '3. Competitors perform a series of mandatory poses to showcase their physique. Judges assess the quality of the poses, including the ability to hit each pose correctly and with confidence.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'FINALS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '4. After the initial rounds, the top competitors are selected to advance to the finals.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '5. In the finals, competitors often perform a posing routine set to music. This routine allows them to showcase their physique and stage presence in a more creative manner.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '6. In the finals, competitors often perform a posing routine set to music. This routine allows them to showcase their physique and stage presence in a more creative manner.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'SCORING',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '7. Each judge’s scores are tallied to determine a competitor’s total score.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '8. Competitors are ranked based on their total scores, with the highest-scoring competitor winning the competition.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
