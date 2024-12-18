import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CurrencyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key});

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  String selectedCurrency = "\$ USD"; // Default selected currency

  // Currency options
  final List<String> currencies = [
    "\$ USD",
    "€ EURO",
    "₫ VND",
    "₽ RUB",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white, // AppBar background color
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
              "Currency",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Currency List
          Expanded(
            child: ListView.builder(
              itemCount: currencies.length,
              itemBuilder: (context, index) {
                final currency = currencies[index];
                return ListTile(
                  title: Text(
                    currency,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      selectedCurrency = currency;
                    });
                  },
                  trailing: selectedCurrency == currency
                      ? const Icon(
                          Icons.check_circle,
                          color: Color(0xFF004CFF),
                        )
                      : const Icon(
                          Icons.circle,
                          color: Color(0xFFEFDCDC),
                        ),
                  tileColor: selectedCurrency == currency
                      ? const Color(0xFFE9EDFF)
                      : Colors.transparent,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Bottom bar background color
        child: Container(
          height: 84,
          decoration: const BoxDecoration(
            color: Colors.white, // Ensures the container is white
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


