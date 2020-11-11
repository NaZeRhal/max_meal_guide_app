import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/category_item.dart';
import 'package:max_meal_guide_app/dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaxMealApp'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        children: DUMMY_CATEGORIES
            .map((ctg) => CategoryItem(
                  id: ctg.id,
                  title: ctg.title,
                  color: ctg.color,
                ))
            .toList(),
      ),
    );
  }
}
