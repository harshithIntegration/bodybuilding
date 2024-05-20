import 'package:flutter/material.dart';

class Sponser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 197, 22),
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 41, 38, 38),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 22.5,
                  child: Image.asset(
                    '1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '⦿ Brand Visibility:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        ' Gain widespread exposure and recognition among fitness enthusiasts, athletes, and industry professionals through our extensive marketing efforts leading up to and during the event.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          wordSpacing: 1.5, // Adjust word spacing
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '⦿ Targeted Audience:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        ' Access a highly engaged and niche audience passionate about health, fitness, and personal development, providing an ideal platform to showcase your products or services.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          wordSpacing: 1.5, // Adjust word spacing
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '⦿ Networking:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Forge valuable connections with industry leaders, athletes, and fitness professionals, opening doors to potential collaborations and business opportunities.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          wordSpacing: 1.5, // Adjust word spacing
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '⦿ Community Impact:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Align your brand with a positive and empowering event that promotes health, wellness, and the pursuit of personal fitness goals, enhancing your corporate social responsibility efforts.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          wordSpacing: 2, // Adjust word spacing
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text("Sponsorship Packages",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              wordSpacing: 1,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        // width: 450,
                        // height: 140,
                        child: AspectRatio(
                          aspectRatio: 4 / 1, // Adjust aspect ratio as needed
                          child: Image.asset(
                            'assets/2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        " ➢ Prime placement of your logo on all promotional materials, including posters, flyers, and social media posts.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Special recognition during key event segments.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Complimentary VIP passes for company representatives and guests.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Recognition on our official website and social media platforms.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: AspectRatio(
                          aspectRatio: 4 / 1,
                          child: Image.asset(
                            "assets/2.jpg",
                            width: 800,
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "➢ Logo placement on event collateral and promotional materials.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Recognition during the event program.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Opportunity to set up a branded booth at the event venue.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Complimentary passes for company representatives.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Recognition on our official website and social media platforms.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: AspectRatio(
                          aspectRatio: 4 / 1,
                          child: Image.asset(
                            "assets/3.jpg",
                            width: 600,
                            height: 100,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "➢ Logo placement on select promotional materials.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Acknowledgment during the event.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Opportunity to distribute marketing materials at the event.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Complimentary passes for company representatives.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: AspectRatio(
                          aspectRatio: 4/1,
                            child: Image.asset(
                              "assets/3.jpg",
                              width: 700,
                              height: 100,
                            ),

                            ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Exclusive space for showcasing your products or services at the event venue.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Opportunity to engage directly with attendees and potential clients.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Logo placement on event signage.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "➢ Complimentary passes for company representatives.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white, wordSpacing: 2),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Seize this unparalleled opportunity to elevate your brand's presence and make a lasting impact on the fitness community. Join us as a sponsor and be part of an event that celebrates dedication, perseverance, and the pursuit of excellence.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          wordSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      PageView(
                        
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
