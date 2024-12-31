import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double rating;
  final int sales;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.sales,
  });
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(
      name: 'sweatshirt',
      imageUrl: 'assets/images/sweatshirt.png',
      price: 200.0,
      rating: 4.5,
      sales: 150,
    ),
    Product(
      name: 'watch V',
      imageUrl: 'assets/images/watch.png',
      price: 500.0,
      rating: 4.7,
      sales: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(products[index].imageUrl),
                Text(products[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('\$${products[index].price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green)),
                Text('rate: ${products[index].rating}', style: TextStyle(color: Colors.orange)),
                Text('number of sales: ${products[index].sales}', style: TextStyle(color: Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }
}