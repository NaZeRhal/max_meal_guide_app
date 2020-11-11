import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/screens/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaxMealGuide',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CategoriesPage(),
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
