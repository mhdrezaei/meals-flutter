import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCAtegory,
  });
  final Category category;
  final void Function(BuildContext context, String categoryId) onSelectCAtegory;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectCAtegory(context, category.id),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.6), category.color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.white,

            shadows: const [
              Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4),
            ],
          ),
        ),
      ),
    );
  }
}
