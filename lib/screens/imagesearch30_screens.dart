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
//       home: HomeScreen(),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/Image30.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),

          // Gallery Button
          Positioned(
            bottom: 50, // Lowered the gallery button
            left: 50, // Positioning near the left edge
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                    context, '/2'); // Add functionality for Gallery button
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: const Icon(Icons.image, size: 30, color: Colors.grey),
              ),
            ),
          ),
          // Gallery Text
          const Positioned(
            bottom: 20, // Lowered the gallery text
            left: 45, // Positioned slightly below the button
            child: Text(
              'Gallery',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),

          // Camera Button
          Positioned(
            bottom: 60, // Lowered the camera button slightly
            left: MediaQuery.of(context).size.width / 2 -
                35, // Centered the button
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/1');
                // Add functionality for Camera button
              },
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 6),
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 36,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Camera Text
          Positioned(
            bottom: 20, // Lowered the camera text
            left: MediaQuery.of(context).size.width / 2 - 28,
            child: const Text(
              'Camera',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
