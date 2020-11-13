import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/screens/categories_page.dart';
import 'package:max_meal_guide_app/screens/category_meals_page.dart';
import 'package:max_meal_guide_app/screens/meal_detail_page.dart';
import 'package:max_meal_guide_app/screens/tabs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaxMealGuide',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesPage(),
      routes: {
        '/': (context) => TabsPage(),
        CategoryMealsPage.routeName: (context) => CategoryMealsPage(),
        MealDetailsPage.routeName: (context) => MealDetailsPage(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoriesPage());
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaxMealGuide'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
