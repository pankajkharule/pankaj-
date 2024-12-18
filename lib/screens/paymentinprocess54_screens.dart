import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class PaymentProgressApp extends StatelessWidget {
//   const PaymentProgressApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: PaymentInProgressScreen(),
//     );
//   }
// }

class PaymentInProgressScreen extends StatelessWidget {
  const PaymentInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Loading spinner with circular progress indicator
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const SizedBox(
                height: 60,
                width: 60,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF004CFF), // Blue spinner
                  ),
                  strokeWidth: 6,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Text: Payment in progress
            const Text(
              'Payment is in progress',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            // Subtext
            const Text(
              'Please, wait a few moments',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
