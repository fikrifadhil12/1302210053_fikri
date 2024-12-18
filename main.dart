import 'package:flutter/material.dart';
import 'detailMobil.dart'; // Import file detailMobil.dart
import 'login.dart'; // Import file AuthScreen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'DASHBOARD',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://example.com/your_image.jpg', // Ganti dengan URL gambar profil
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CarListScreen()),
                );
              },
              child: DashboardCard(icon: Icons.directions_car, label: 'MOBIL'),
            ),
            SizedBox(width: 16),
            DashboardCard(icon: Icons.motorcycle, label: 'MOTOR'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple,
        child: Icon(Icons.navigation, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String label;

  DashboardCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 100,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.purple),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class CarListScreen extends StatelessWidget {
  final List<Map<String, String>> carData = [
    {
      "name": "RANGE OVER",
      "model": "SUV",
      "color": "Orange",
      "space": "Space 4c",
      "imageUrl": "https://example.com/car_image.jpg",
      "rating": "4.0",
      "reviews": "50",
      "price": "500rb/hari"
    },
    {
      "name": "SUV X5",
      "model": "SUV",
      "color": "Black",
      "space": "Space 5c",
      "imageUrl": "https://example.com/suv_image.jpg",
      "rating": "4.5",
      "reviews": "70",
      "price": "600rb/hari"
    },
    // Tambahkan lebih banyak data mobil sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'MOBIL',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://example.com/your_image.jpg', // Ganti dengan URL gambar profil
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: carData.map((data) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: CarCard(
              data: data,
              onViewPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarDetailScreen(data: data),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final Map<String, String> data;
  final VoidCallback onViewPressed;

  CarCard({required this.data, required this.onViewPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data["name"]!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  data["space"]!,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Image.network(
                  data["imageUrl"]!,
                  width: 80,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          data["rating"]!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.chat, color: Colors.green, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '${data["reviews"]} reviews',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('Harga', style: TextStyle(color: Colors.grey)),
                    Text(
                      data["price"]!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: onViewPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text('VIEW'),
            ),
          ],
        ),
      ),
    );
  }
}
