import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final Map<String, String> data;

  CarDetailScreen({required this.data});

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
          'MOBIL DETAIL',
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
        // Center the column
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Use min to prevent taking up unnecessary space
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(data["imageUrl"]!, height: 200),
              SizedBox(height: 16),
              Text(
                data["name"]!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Center text
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SPECIFICATIONS",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text("Model: ${data["model"]}"),
                      Text("Warna: ${data["color"]}"),
                      Text("Harga: ${data["price"]}"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16), // Add space before the next section
              Text("Don’t know the route?",
                  style: TextStyle(color: Colors.grey)),
              TextButton(
                onPressed: () {},
                child: Text("Get Directions",
                    style: TextStyle(color: Colors.purple)),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('BOOKING NOW'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
