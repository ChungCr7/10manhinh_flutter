import 'package:flutter/material.dart';

class Manhinh4 extends StatelessWidget {
  const Manhinh4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 30,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yoo Jin',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Finding a Guide for the trip in',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Danang, Vietnam',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Box lớn chứa tất cả thông tin từ "Date" đến "3 Guides sent offers"
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TripDetailItem(
                    icon: Icons.date_range,
                    label: 'Date',
                    value: 'Feb 2, 2020',
                  ),
                  TripDetailItem(
                    icon: Icons.access_time,
                    label: 'Time',
                    value: '8:00 - 10:00',
                  ),
                  TripDetailItem(
                    icon: Icons.person,
                    label: 'Number of Travelers',
                    value: '2',
                  ),
                  TripDetailItem(
                    icon: Icons.attach_money,
                    label: 'Price',
                    value: '\$10/hour',
                  ),
                  TripDetailItem(
                    icon: Icons.language,
                    label: "Guide's Language",
                    value: 'Vietnamese, Korean',
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Attractions',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 8,
                        children: [
                          AttractionChip(label: 'Dragon Bridge'),
                          AttractionChip(label: 'Aisa Park'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          AttractionChip(label: 'My Khe Beach'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3 Guides sent offers',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            left: 40,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/images3.png'),
                              radius: 20,
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/images2.png'),
                              radius: 20,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/images1.png'),
                            radius: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.teal,
                ),
                child: Text('SEND OFFER'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripDetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const TripDetailItem(
      {super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class AttractionChip extends StatelessWidget {
  final String label;

  const AttractionChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(Icons.place, color: Colors.white, size: 20),
      label: Text(label),
      backgroundColor: Colors.teal,
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
