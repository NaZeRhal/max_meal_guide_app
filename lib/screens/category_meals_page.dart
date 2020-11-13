import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/models/meal.dart';
import 'package:max_meal_guide_app/widgets/meal_item.dart';

class CategoryMealsPage extends StatefulWidget {
  static const String routeName = '/category-meals';
  final List<Meal> availableMealsList;

  const CategoryMealsPage(this.availableMealsList);

  @override
  _CategoryMealsPageState createState() => _CategoryMealsPageState();
}

class _CategoryMealsPageState extends State<CategoryMealsPage> {
  String categoryTitle;
  List<Meal> mealsList;
  bool isLoadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!isLoadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      final categoryId = routeArgs['id'];
      categoryTitle = routeArgs['title'];
      mealsList = widget.availableMealsList
          .where((meal) => meal.categories.contains(categoryId))
          .toList();
      isLoadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeItem(String id) {
    setState(() {
      mealsList.removeWhere((meal) => meal.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: mealsList[index].id,
            title: mealsList[index].title,
            duration: mealsList[index].duration,
            complexity: mealsList[index].complexity,
            affordability: mealsList[index].affordability,
            imageUrl: mealsList[index].imageUrl,
          );
        },
        itemCount: mealsList.length,
      ),
    );
  }
}
