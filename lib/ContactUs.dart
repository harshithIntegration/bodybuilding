
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:globalphysiqueexpo/Dashboard.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  late AnimationController _controller;
  late GoogleMapController _mapController;

  static const LatLng _officeLocation = LatLng(13.0983657, 77.5378028); // Coordinates for your office location

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue[50]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
           
             padding: EdgeInsets.all(10.0),
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                aspectRatio: 16 / 10,
                child: Image.asset(
                  'assets/body2.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 15,),
                const Center(
                  child: Text(
                    '➤  Contact Information :',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AnimationLimiter(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 1200),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: [
                        buildContactCard(
                          icon: Icons.location_on,
                          title: 'Address',
                          content: '#49 Ravish Gardenia Layout\nVaderahalli, Bengaluru, Karnataka 560097',
                        ),
                        SizedBox(height: 20),
                        buildContactCard(
                          icon: Icons.phone,
                          title: 'Call Us',
                          content: '+91 7899828061\n+91 9513422252',
                        ),
                        SizedBox(height: 20),
                        buildContactCard(
                          icon: Icons.email,
                          title: 'Mail Us',
                          content: 'Support@example.com',
                        ),
                        SizedBox(height: 20),
                        buildContactCard(
                          icon: Icons.access_time,
                          title: 'Opening Time',
                          content: 'Mon - Sat: 09.30am to 18.00pm',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    '➤  Message Us :',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1.0, 0.0),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.easeInOut,
                  )),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          label: 'Name',
                          icon: Icons.person,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          label: 'Phone No',
                          icon: Icons.phone,
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          label: 'Email',
                          icon: Icons.email,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          label: 'Subject',
                          icon: Icons.subject,
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: 20),
                        CustomTextField(
                          label: 'Message',
                          icon: Icons.message,
                          keyboardType: TextInputType.multiline,
                          maxLines: 7,
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: OutlinedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Process data
                              }
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                              backgroundColor: Colors.blue,
                              side: BorderSide(color: Colors.blue, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Submit Now',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                const Center(
                  child: Text(
                    '➤  Find Us Here :',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 300,
                  child: GoogleMap(
                    onMapCreated: (controller) {
                      _mapController = controller;
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _mapController.showMarkerInfoWindow(MarkerId('office'));
                      });
                    },
                    initialCameraPosition: const CameraPosition(
                      target: _officeLocation,
                      zoom: 19,
                    ),
                    markers: {
                      const Marker(
                        markerId: MarkerId('office'),
                        position: _officeLocation,
                        infoWindow: InfoWindow(
                          title: 'Planotech group of companies',
                          snippet: 'Directions',
                        ),
                      ),
                    },
                  ),
                ),
                SizedBox(height: 40),
                buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContactCard({required IconData icon, required String title, required String content}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 30,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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

}

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType keyboardType;
  final int maxLines;

  CustomTextField({
    required this.label,
    required this.icon,
    required this.keyboardType,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        }
        return null;
      },
    );
  }
}
