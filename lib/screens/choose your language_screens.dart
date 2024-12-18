import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String selectedLanguage = "English"; // Default selected language

  // Language options
  final List<String> languages = [
    "English",
    "Français",
    "Русский",
    "Tiếng Việt"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set entire page background color to white
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white, // AppBar background color set to white
        automaticallyImplyLeading: false,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(
              "Language",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Language List
          Expanded(
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return ListTile(
                  title: Text(
                    language,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedLanguage = language;
                    });
                  },
                  trailing: selectedLanguage == language
                      ? const Icon(
                          Icons.check_circle,
                          color: Color(0xFF004CFF),
                        )
                      : const Icon(
                          Icons.circle,
                          color: Color(0xFFEFDCDC),
                        ),
                  tileColor: selectedLanguage == language
                      ? const Color(0xFFE9EDFF)
                      : Colors.transparent,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Bottom bar background color set to white
        child: Container(
          height: 84,
          decoration: const BoxDecoration(
            color: Colors.white, // Container background color set to white
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000),
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


