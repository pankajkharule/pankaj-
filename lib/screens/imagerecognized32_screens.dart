import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Hides the debug banner
//       title: 'Detection Page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DetectionPage(),
//     );
//   }
// }

class DetectionPage extends StatelessWidget {
  const DetectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 382,
          height: 825,
          child: Stack(
            children: [
              // Background image
              Positioned(
                top: -5,
                child: Container(
                  width: 375,
                  height: 812,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/Image32.png'), // Background image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Detection image
              Positioned(
                top:
                    287, // Adjust this value to place the detection image in the correct position
                left: 0,
                child: SizedBox(
                  width: 375,
                  height: 337,
                  child: Image.asset(
                    'assets/Detection32.png', // Detection image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Progress bar (using a single image)
              Positioned(
                top: 652,
                left: 80,
                child: SizedBox(
                  width: 215,
                  height: 10,
                  child: Image.asset(
                    'assets/Progress32.png', // Path for the progress bar image
                    fit: BoxFit.fill, // Fit the image within the given space
                  ),
                ),
              ),
              // Close button with image
              Positioned(
                top: 716,
                left: 163,
                child: GestureDetector(
                  onTap: () {
                    // Close button action
                    Navigator.pushNamed(context, '/4');
                  },
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/close32.png', // Close button image
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
