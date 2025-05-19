import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.meals, required this.title});
  static const routeName = '/category-meals';

  final List<Meal> meals;
  final String title;
  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text(meals[index].title),
          onTap: () {
            // Handle meal tap
          },
        );
      },
    );

    if (meals.isEmpty) {
      content = const Center(child: Text('No meals found!'));
    }

    return Scaffold(appBar: AppBar(title: const Text('Meals')), body: content);
  }
}
