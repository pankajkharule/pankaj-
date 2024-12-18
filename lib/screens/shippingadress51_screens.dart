import 'package:flutter/material.dart';

void main() {
  runApp(const ShippingAddressApp());
}

class ShippingAddressApp extends StatelessWidget {
  const ShippingAddressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShippingAddressPage(),
    );
  }
}

class ShippingAddressPage extends StatelessWidget {
  final TextEditingController _addressController = TextEditingController(
      text: "Magadi Main Rd, next to Prasanna Theatre, C");
  final TextEditingController _cityController =
      TextEditingController(text: "Bengaluru, Karnataka 560023");
  final TextEditingController _postcodeController =
      TextEditingController(text: "70000");

  ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cover Image Section
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Cover51.png'), // Cover Image Path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Shipping Address",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Country",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: screenWidth - 32, // Makes it responsive
                    child: TextFormField(
                      enabled: false,
                      initialValue: "India",
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.arrow_forward_ios,
                            size: 16, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Address",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: screenWidth - 32,
                    child: TextFormField(
                      controller: _addressController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Town / City",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: screenWidth - 32,
                    child: TextFormField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Postcode",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: screenWidth - 32,
                    child: TextFormField(
                      controller: _postcodeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: screenWidth - 32,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Save Changes clicked");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF004CFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text(
                        "Save Changes",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Set bottom bar background color to white
        child: Container(
          height: 84,
          decoration: const BoxDecoration(
            color: Colors.white, // Explicit white color for clarity
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
                icon:
                    const Icon(Icons.home, color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Home button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.favorite,
                    color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Favorite button pressed");
                },
              ),
              IconButton(
                icon: const Icon(Icons.list_alt,
                    color: Color(0xFF004CFF), size: 28),
                onPressed: () {
                  print("Orders button pressed");
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
