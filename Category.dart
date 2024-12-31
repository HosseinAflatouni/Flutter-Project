import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Categories',

    );
  }
}

class Categories {
  final String name;
  final String imageUrl;

  Categories({required this.name, required this.imageUrl});
}

List<Categories> categories = [
  Categories(name: 'clothes', imageUrl: 'assets/images/clothes.png'),
  Categories(name: 'watches', imageUrl: 'assets/images/watch.png'),
  Categories(name: 'bags', imageUrl: 'assets/images/bag.png'),
  Categories(name: 'shoes', imageUrl: 'assets/images/shoes.png'),
  Categories(name: 'mobiles', imageUrl: 'assets/images/clothes.png'),
  Categories(name: 'sports', imageUrl: 'assets/images/clothes.png'),
];

class CategoryCard extends StatelessWidget {
  final Categories category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(category.imageUrl),
          Text(category.name),
        ],
      ),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(category: categories[index]);
      },
    );
  }
}
