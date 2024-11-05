import 'package:flutter/material.dart';

class Manhinh3 extends StatelessWidget {
  final List<Tour> tours = [
    Tour('Da Nang - Ba Na - Hoi An', 'Jan 30, 2020', 3, 400,
        'assets/danang.png'),
    Tour('Melbourne - Sydney', 'Jan 30, 2020', 3, 600, 'assets/halong.png'),
    Tour('Hanoi - Ha Long Bay', 'Jan 30, 2020', 3, 300, 'assets/sydney.png'),
    Tour('Da Nang - Ba Na - Hoi An', 'Jan 30, 2020', 3, 400,
        'assets/danang.png'),
  ];

  Manhinh3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tours in Danang'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, // Hiển thị 2 tour mỗi hàng
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          childAspectRatio: 1.5, // Tỉ lệ card
        ),
        itemCount: tours.length,
        itemBuilder: (context, index) {
          return TourCard(tour: tours[index]);
        },
      ),
    );
  }
}

class Tour {
  final String title;
  final String date;
  final int duration;
  final int price;
  final String imageUrl;

  Tour(this.title, this.date, this.duration, this.price, this.imageUrl);
}

class TourCard extends StatelessWidget {
  final Tour tour;

  const TourCard({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.asset(
                  tour.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Row(
                  children: List.generate(5, (index) {
                    return const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    );
                  }),
                ),
              ),
              const Positioned(
                bottom: 10,
                left: 125,
                child: Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 16),
                    SizedBox(width: 5),
                    Text(
                      '123 likes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0,
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tiêu đề
                Text(
                  tour.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),

                // Ngày với biểu tượng icon
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(tour.date),
                  ],
                ),
                const SizedBox(height: 5),

                // Row để hiển thị số ngày và giá
                Row(
                  children: [
                    const Icon(Icons.timer, size: 16, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text('${tour.duration} days'),
                    const Spacer(),
                    Text(
                      '\$${tour.price}',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
