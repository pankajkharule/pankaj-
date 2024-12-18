import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ImagePage(),
//     );
//   }
// }

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/Image31.png'), // Replace with your image file path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Static Progress Bar
          Positioned(
            top: screenSize.height *
                0.8, // Adjust this value to position the progress bar
            left: (screenSize.width - 200) / 2,
            child: SizedBox(
              width: 200, // Progress bar width
              child: LinearProgressIndicator(
                backgroundColor:
                    Colors.grey[300], // Background color of the progress bar
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                value:
                    0.5, // Set this to a fixed value between 0.0 (empty) and 1.0 (full)
                minHeight: 5, // Thickness of the progress bar
              ),
            ),
          ),

          // Close Button
          Positioned(
            top: screenSize.height * 0.88, // Position near the bottom
            left: (screenSize.width - 50) / 2,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/3');
                // Handle the close button tap action
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black54,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
