import 'package:flutter/material.dart';

class Manhinh10 extends StatefulWidget {
  const Manhinh10({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Manhinh10State createState() => _Manhinh10State();
}

class _Manhinh10State extends State<Manhinh10> {
  String? selectedReason;
  final TextEditingController anotherReasonController = TextEditingController();

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
        title: const Center(
          child: Text(
            'Trip Detail',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Reject the Trip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "The reason why you reject this trip",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),

            // List of reasons
            Column(
              children: [
                _buildRadioOption(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                _buildRadioOption(
                    "Lorem Ipsum has been the industry's standard dummy text ever since the."),
                _buildRadioOption("It has survived not only five centuries."),
                _buildRadioOption(
                    "But also the leap into electronic typesetting, remaining essentially unchanged."),
              ],
            ),
            const SizedBox(height: 16),

            // Another reason input
            TextField(
              controller: anotherReasonController,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: "Another reason",
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
            ),
            const SizedBox(height: 20),

            // Reject button
            ElevatedButton(
              onPressed: () {
                // Handle rejection
                print("Selected Reason: $selectedReason");
                print("Another Reason: ${anotherReasonController.text}");
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
                'REJECT',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build radio button options
  Widget _buildRadioOption(String text) {
    return ListTile(
      leading: Radio<String>(
        value: text,
        groupValue: selectedReason,
        onChanged: (String? value) {
          setState(() {
            selectedReason = value;
          });
        },
      ),
      title: Text(text),
    );
  }
}
