import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class MenHandicap extends StatefulWidget {
  @override
  _MenHandicapState createState() => _MenHandicapState();
}

class _MenHandicapState extends State<MenHandicap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men\'s Handicap Judging and Finals'),
        backgroundColor: const Color.fromARGB(255, 255, 197, 22),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'MEN\'S HANDICAP JUDGING',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Similar to standard bodybuilding competitions, judges assess factors such as muscle size, definition, symmetry, proportion, and stage presence.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '2. Judges take into account any adaptations or modifications made by the athletes due to their disabilities. They evaluate how well the athletes present their physique within the scope of their abilities.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '3. Competitors perform mandatory poses, adjusted as necessary based on their individual abilities. Judges assess the quality of the poses and how well they are executed.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '4. Judges assign scores based on their evaluation of each competitor’s performance, considering both the standard criteria and any adaptations required due to disabilities.',
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
                '5. Similar to standard competitions, the top competitors from the initial rounds advance to the finals.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '6. Athletes may perform a posing routine in the finals, showcasing their physique and stage presence. The routine is adapted to accommodate any disabilities and may incorporate creative elements.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '7. Judges may conduct additional comparison rounds among the top competitors to determine final rankings.',
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
                '8. Scores from each judge are totaled to calculate each competitor’s overall score.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '9. Competitors are ranked based on their total scores, with the highest-scoring athlete winning the competition.',
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
