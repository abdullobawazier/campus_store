import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String price;
  final IconData icon;
  final String description;

  const DetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.icon,
    required this.description,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Katalog'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                widget.icon,
                size: 90,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 25),

            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              widget.price,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                widget.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: toggleFavorite,
              icon: Icon(
                isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              label: Text(
                isFavorite
                    ? 'Added to Favorite'
                    : 'Add to Favorite',
              ),
            ),

            const SizedBox(height: 15),

            Text(
              isFavorite
                  ? 'Produk ditambahkan ke favorit.'
                  : 'Produk belum ditambahkan ke favorit.',
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}