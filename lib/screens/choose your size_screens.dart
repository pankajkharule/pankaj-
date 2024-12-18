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
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final List<String> sizes = ["US", "EU", "UK"];
  String selectedSize = "US"; // Default selected size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sizes Header
            const Text(
              'Sizes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),

            // Sizes List
            Expanded(
              child: ListView.builder(
                itemCount: sizes.length,
                itemBuilder: (context, index) {
                  final size = sizes[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSize = size;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        color: selectedSize == size
                            ? Colors.blue.shade50
                            : Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            size,
                            style: TextStyle(
                              fontSize: 18,
                              color: selectedSize == size
                                  ? Colors.black
                                  : Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (selectedSize == size)
                            const Icon(Icons.check_circle,
                                color: Colors.blue, size: 24),
                          if (selectedSize != size)
                            const Icon(Icons.circle_outlined,
                                color: Color(0xFFF8CECE), size: 20), // PinkAccent replaced
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Cart button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.person_outline,
                    color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Profile button pressed");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


