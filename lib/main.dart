import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/55paymentnotproceed_screens.dart';
import 'package:flutter_application_1/screens/56cardchanged_screens.dart';
import 'package:flutter_application_1/screens/image31_screens.dart';
import 'package:flutter_application_1/screens/imagerecognized32_screens.dart';
import 'package:flutter_application_1/screens/imagesearch30_screens.dart';
import 'package:flutter_application_1/screens/paymentinprocess54_screens.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/1',
      routes: {
        '/1': (context) => const HomeScreen(), // Ensure HomeScreen exists
        '/2': (context) => const ImagePage(), // Ensure ImagePage exists
        '/3': (context) => const DetectionPage(), // Ensure DetectionPage exists
        '/4': (context) => const PaymentErrorApp(),
        '/5': (context) => const ConfirmationDialog(),
        '/6': (context) => const PaymentInProgressScreen(),
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            width: 375,
            height: 912,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Existing positioned blue bubble background
                Positioned(
                  top: -10.32,
                  right: 150.44,
                  child: Opacity(
                    opacity: 1.0,
                    child: Container(
                      width: 300.87,
                      height: 350.65,
                      decoration: const BoxDecoration(
                        color: Color(0xFF004BFE),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/Bubbles.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Main container with image and text
                Positioned(
                  top: 60, // Lifted the container a bit
                  left: 20,
                  child: Container(
                    width: 326,
                    height: 614,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.18),
                          blurRadius: 37,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Image inside main container with rounded corners
                        GestureDetector(
                          onTap: () {
                            // Action when the image is tapped
                            Navigator.pushNamed(context, '/1');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: SizedBox(
                              width: 326,
                              height: 338,
                              child: Image.asset(
                                'assets/hellocard11.png', // Ensure this asset path is correct
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Hello',
                          style: GoogleFonts.raleway(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.28,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus..',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),

                // Dots/Slides indicators moved to just above the black line
                Positioned(
                  bottom: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(color: const Color(0xFFC7D6FB)),
                      const SizedBox(width: 10),
                      _buildDot(color: const Color(0xFFC7D6FB)),
                      const SizedBox(width: 10),
                      _buildDot(color: const Color(0xFFC7D6FB)),
                      const SizedBox(width: 10),
                      _buildDot(color: const Color(0xFF004CFF)),
                    ],
                  ),
                ),

                // Black line at the very bottom
                Positioned(
                  bottom: 5,
                  child: Container(
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget to build each dot
  Widget _buildDot({required Color color}) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            blurRadius: 30,
          ),
        ],
      ),
    );
  }
}
