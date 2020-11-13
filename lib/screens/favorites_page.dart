import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/models/meal.dart';
import 'package:max_meal_guide_app/widgets/meal_item.dart';

class FavoritesPage extends StatelessWidget {
  final List<Meal> favoritedMeals;

  const FavoritesPage(this.favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favoritedMeals[index].id,
            title: favoritedMeals[index].title,
            duration: favoritedMeals[index].duration,
            complexity: favoritedMeals[index].complexity,
            affordability: favoritedMeals[index].affordability,
            imageUrl: favoritedMeals[index].imageUrl,
          );
        },
        itemCount: favoritedMeals.length,
      );
    }
  }
}
