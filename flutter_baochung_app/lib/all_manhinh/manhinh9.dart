import 'package:flutter/material.dart';

class Manhinh9 extends StatefulWidget {
  const Manhinh9({super.key});

  @override
  _Manhinh9State createState() => _Manhinh9State();
}

class _Manhinh9State extends State<Manhinh9> {
  final TextEditingController feeController = TextEditingController();
  final TextEditingController offerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fee Input Field
            const Text(
              "Your Fee",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: feeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "\$ Fee",
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
            ),
            const SizedBox(height: 16),

            // Offer Input Field
            const Text(
              "Your Offer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: offerController,
              maxLines: 5,
              decoration: const InputDecoration(
                hintText:
                    "Describe your offer, how you can help Yoo Jin explore Danang city",
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),

            // Send Offer Button
            ElevatedButton(
              onPressed: () {
                // Handle offer submission
                print("Fee: ${feeController.text}");
                print("Offer: ${offerController.text}");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(vertical: 15),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'SEND OFFER',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
