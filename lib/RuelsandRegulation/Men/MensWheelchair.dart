import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class MenWheelchair extends StatefulWidget {
  @override
  _MenWheelchairState createState() => _MenWheelchairState();
}

class _MenWheelchairState extends State<MenWheelchair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men\'s Wheelchair Judging & Finals'),
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
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'MEN\'S WHEELCHAIR JUDGING & FINALS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Each competitor is called onstage in numerical order and has up to a maximum of 60 seconds to perform their individual routine.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '2. The entire lineup is then called onstage in numerical order and forms in equal numbers along diagonal lines at each side of the stage. The center stage area is left clear for the callouts.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '3. The head judge then directs groups of competitors in numerical order through the quarter turns and eight mandatory poses in the order shown below. The size of the groups is at the discretion of the head judge.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' - Front double biceps', style: TextStyle(color: Colors.black,),), 
                    Text(' - Front lat spread' , style: TextStyle(color: Colors.black,),),
                    Text(' - Side chest' , style: TextStyle(color: Colors.black,),),
                    Text(' - Back double biceps', style: TextStyle(color: Colors.black,),),
                    Text(' - Back lat spread' , style: TextStyle(color: Colors.black,),),
                    Text(' - Side triceps', style: TextStyle(color: Colors.black,),),
                    Text(' - Abdominals' , style: TextStyle(color: Colors.black,),),
                    Text(' - Most muscular', style: TextStyle(color: Colors.black,),),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '4. The head judge then directs selected competitors through the callouts, where the selected competitors are compared against each other in the quarter turns and mandatory poses. The number and placement of competitors in the callouts is at the discretion of the head judge.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '5. Each competitor is called onstage individually in numerical order and has up to a maximum of 90 seconds to perform a posing routine to music of the competitor’s choice.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  wordSpacing: 2.0,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '6. The entire lineup is then called onstage in numerical order for a 60-second posedown to music of the promoter’s choice.',
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
                '7. The Judging is valued at 100%. During the Finals, and at the discretion of the head judge, the callouts may be a judged and scored “confirmation round”. In such cases, these scores will replace those of the Judging.',
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
