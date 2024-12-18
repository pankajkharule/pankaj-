import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReviewPage(),
    );
  }
}

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  int _selectedRating = 0;

  void _setRating(int rating) {
    setState(() {
      _selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 84,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000), // 10% opacity shadow
                blurRadius: 1,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Home button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Favorite button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.list_alt, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Orders button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Cart button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.person_outline, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Profile button pressed");
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          // Cover image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 728, // Fixed height for cover layout
              width: 375, // Fixed width for cover layout
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover66.png'), // Replace with your cover image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Review popup
          Positioned(
            top: 363,
            left: 0,
            right: 0,
            child: Container(
              height: 365, // Fixed height for rectangle layout
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Review',
                    style: TextStyle(
                      fontSize: 18, // Decreased font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/review.png'), // Replace with your image asset
                        radius: 25,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet consectetur.',
                            style: TextStyle(
                              fontSize: 12, // Decreased font size
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Order #92287157',
                            style: TextStyle(
                              fontSize: 12, // Decreased font size
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () => _setRating(index + 1),
                        child: Icon(
                          index < _selectedRating ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 25, // Decreased size
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Your comment',
                      hintStyle: const TextStyle(fontSize: 14), // Decreased font size
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Say it!',
                        style: TextStyle(
                          fontSize: 14, // Decreased font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


