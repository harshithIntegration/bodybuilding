import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class MenPhysique extends StatefulWidget {
  @override
  _MenPhysiqueState createState() => _MenPhysiqueState();
}

class _MenPhysiqueState extends State<MenPhysique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men\'s Physique Judging and Finals'),
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
                  'MEN\'S PHYSIQUE JUDGING',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Each competitor is called onstage individually in numerical order, walks to the center of the stage, performs front and back turns and then forms in equal numbers along diagonal lines at each side of the stage. The center stage area is left clear for the callouts.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '2. The head judge then directs groups of competitors in numerical order through the front and back turns. The size of the groups is at the discretion of the head judge.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '3. The head judge then directs selected competitors through the callouts, where the selected competitors are compared against each other in the front and back turns. The number and placement of competitors in the callouts is at the discretion of the head judge.',
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
                '4. Each competitor is called onstage individually in numerical order, walks to the center of the stage, performs front and back turns and then forms in equal numbers along diagonal lines at each side of the stage. The center stage area is left clear for the callouts.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '5. The head judge then directs selected competitors through the callouts, where the selected competitors are compared against each other in the front and back turns. The number and placement of competitors in the callouts is at the discretion of the head judge.',
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
                '7. For the Judging and Finals, competitors must wear board shorts with the following specifications: They must be one inch below the navel. They must extend to two inches above the kneecap and be tapered. Spandex is prohibited. Logos are prohibited except for a manufacturer’s logo',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '8. Competitors will compete shirtless and barefoot.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '9. The competitor’s number must be securely attached to the left side of the posing trunks at Judging and Finals.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '10. During the Judging, competitors cannot wear watches, bangles, pendants, chains, bracelets (wrist or ankle), ornamentation or artificial aids to the physique.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '11. The excessive application of oils, moisturizers, skin creams, tanning creams, and like products is prohibited and may be used only in moderation. The application of tanning products must produce a natural tone so as to give the appearance of a natural tan. Products that produce an unnaturally colored tone, with an orange, yellow, red, green, or gold hue, are prohibited. Bronzing agents that produce a metallic look are also prohibited.',
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
