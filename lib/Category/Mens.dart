import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class Mens extends StatefulWidget {
  const Mens({super.key});

  @override
  State<Mens> createState() => _MensState();
}

class _MensState extends State<Mens> {
  Map<int, bool> showFullTextMap = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Category',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 197, 22),
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
            color: Colors.white,
          ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(3),
                  child: const Text(
                    'Mens Category',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/gym1.jpg',
                title: 'MEN’S PHYSIQUE',
                subTitle1: 'JUNIOR (Below 23 Yr.)',
                subTitle2: 'SENIOR (Above 23 Yr.)',
                description: 'Well-developed and muscular upper body with emphasis on broad, round shoulders, small waist &excellent V-Taper. Men’s Physique is well groomed, polished in presentation and requires an almost equal amount of condition as Bodybuilding without the leg development. Men’s Physique athletes should display effortless and polished overall look with posing, and smile.This includes the Front position, posing, transitions, self-confidence and overall presentation.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cm2.jpg',
                title: 'CLASSIC PHYSIQUE',
                subTitle1: 'JUNIOR (Below 23 Yr.)',
                subTitle2: 'SENIOR (Above 23 Yr.)',
                description: 'The Classic Physique category is a throwback to the ‘Golden Era” of Bodybuilding. It represents the epitome of health and fitness in art form. The Classic Physique is a picture of flawless symmetry, perfectly sculptured muscle groups that fight each other for dominance, creating a balanced and complete physique. Classic Physique has broad shoulders accompanied by a small waist, round balanced quads. It is less muscular than body building but equal in conditioning.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cm3.jpg',
                title: 'MASTER',
                subTitle1: 'AGE BETWEEN(40 to 50 years)',
                subTitle2: 'AGE OF 50years and Above',
                description: 'Master bodybuilding categories typically refer to divisions in bodybuilding competitions for athletes over a certain age, often 40 or 50 years old. These categories allow older athletes to compete against peers of a similar age and experience level. Competitors are judged based on criteria like muscle size, definition, symmetry, and presentation. Master categories provide a platform for older athletes to showcase their physique and dedication to the sport.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cm4.jpg',
                title: 'WHEELCHAIR BODYBUILDING',
                subTitle1: '',
                subTitle2: '',
                description:'This division includes all wheelchair bodybuilders, regardless of their weight or specific disability.Unity and inclusivity are emphasized in celebrating the remarkable achievements of athletes in the wheelchair bodybuilding community. We are excited about this change and look forward to providing an even more inclusive and unified experience for all wheelchair bodybuilders at the NPC Wheelchair Nationals in 2024. Thank you for your continued support, and we can’t wait to see you shine in the Wheelchair Division!',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cm5.jpg',
                title: 'HANDICAP',
                subTitle1: 'AGE BETWEEN(40 to 50 years)',
                subTitle2: 'AGE OF 50years and Above',
                description: 'In order to safeguard the integrity of fair competition, all Para sports have a system in place which aims to ensure that winning is determined by sporting factors such as skill, fitness, power, endurance, tactical ability and mental focus, the same factors that account for success in sport for able bodied athletes.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cm6.jpg',
                title: 'BODYBUILDING',
                subTitle1: 'Up to 60kgs 60 to 65kgs 65 to 70kgs 70 to 75kgs 75 to 80kgs 80 to 85kgs 85 to 90kgs 90kgs and above',
                subTitle2: '',
                description:'The most muscular and extremely conditioned of all categories. Bodybuilding is the highest degree off development and refinement. Requiring large muscle groups, with extreme balance and symmetry top to bottom, side to side and front to back. Degree of conditioning should include good vascularity, separation and definition between muscle groups, and visible striations of the main muscle groups such as legs, glutes, chest back and shoulders.',
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }


Widget _buildCategoryContainer({
  required String imageUrl,
  required String title,
  required String subTitle1,
  required String subTitle2,
  required String description,
}) {
  return Container(
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subTitle1,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subTitle2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 14.0,
            color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: () {
              // Add your functionality for Register Now button
            },
            child: const Text('Register Now'),
          ),
        ),
      ],
    ),
  );
}
}