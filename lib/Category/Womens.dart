import 'package:flutter/material.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';

class Womens extends StatefulWidget {
  const Womens({super.key});

  @override
  State<Womens> createState() => _WomensState();
}

class _WomensState extends State<Womens> {
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
                    'Womens Category',
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
                imageUrl: 'assets/gym12.jpg',
                title: 'WOMEN’S BIKINI',
                subTitle1: '',
                subTitle2: '',
                description: 'Female entry level division. Muscularity is on the smaller side, while carrying just enough body fat to avoid muscle separation. Nice toned body with NO visible 6 pack abs but still maintaining a flat and toned midsection. A bikini competitor should deliver a combination of overall beauty and the physical appeal of a shapely toned body together with stage and self-confidence.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cw2.jpg',
                title: 'WOMEN’S FITNESS',
                subTitle1: '',
                subTitle2: '',
                description: 'Developed muscularity with emphasis on an overall balance of all muscle groups between upper and lower body. Less muscular than a figure competitor but lean and conditioned to show defined 6 pack abs and obliques, capped/rounded shoulders and back definition to be seen. Walk and poses like a Fitness model.',
              ),
              const SizedBox(height: 20),
              _buildCategoryContainer(
                imageUrl: 'assets/cw3.jpg',
                title: 'WOMEN’S PHYSIQUE',
                subTitle1: '',
                subTitle2: '',
                description: 'Women’s physique competitors should step on stage with a very low level of body fat. Some muscle striations are allowed in this category. The overall look that the judges want to see is leaner and more muscular, than the other categories. Though the thick muscles and extremely low body fat levels of female bodybuilders is not desired in this category. Physique women are expected to have a wide back and shoulders, a tiny waist, strong, lean legs and glutes combined with perfect symmetry and balance to their physique, with some muscle striations.',
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