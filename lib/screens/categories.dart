import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
        ),
        children: [
          Text('1', style: TextStyle(color: Colors.white)),
          Text('2', style: TextStyle(color: Colors.white)),
          Text('3', style: TextStyle(color: Colors.white)),
          Text('4', style: TextStyle(color: Colors.white)),
          Text('5', style: TextStyle(color: Colors.white)),
          Text('6', style: TextStyle(color: Colors.white)),
          // CategoryItem(title: 'Italian', color: Colors.purple),
          // CategoryItem(title: 'Quick & Easy', color: Colors.red),
          // CategoryItem(title: 'Hamburgers', color: Colors.orange),
          // CategoryItem(title: 'German', color: Colors.amber),
          // CategoryItem(title: 'Light & Lovely', color: Colors.blue),
          // CategoryItem(title: 'Exotic', color: Colors.green),
        ],
      ),
    );
  }
}
