import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Laptop',
      'price': 'Rp8.500.000',
      'icon': Icons.laptop,
      'description':
          'Laptop yang cocok digunakan untuk kegiatan perkuliahan, programming, dan mengerjakan tugas.',
    },
    {
      'name': 'Headphone',
      'price': 'Rp450.000',
      'icon': Icons.headphones,
      'description':
          'Headphone nyaman untuk belajar, mendengarkan musik, dan mengikuti kelas online.',
    },
    {
      'name': 'Backpack',
      'price': 'Rp350.000',
      'icon': Icons.backpack,
      'description':
          'Tas praktis untuk membawa laptop, buku, dan perlengkapan kuliah sehari-hari.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Store'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  product['icon'],
                  size: 32,
                  color: Colors.blue,
                ),
              ),
              title: Text(
                product['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(product['price']),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: product['name'],
                      price: product['price'],
                      icon: product['icon'],
                      description: product['description'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}