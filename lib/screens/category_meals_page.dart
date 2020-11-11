import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsPage({
  //   Key key,
  //   @required this.categoryId,
  //   @required this.categoryTitle,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'] ?? '';
    final categoryTitle = routeArgs['title'] ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The recipes for the category'),
      ),
    );
  }
}
