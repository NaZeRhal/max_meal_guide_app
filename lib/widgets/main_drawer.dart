import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/screens/filters_page.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildListTile(IconData iconData, String title, Function onTapAction) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTapAction,
    );
  }

  @override
  Widget build(BuildContext context) {
    var children2 = [
      Container(
        height: 120,
        width: double.infinity,
        padding: EdgeInsets.all(16),
        alignment: Alignment.centerLeft,
        color: Theme.of(context).primaryColor,
        child: Text(
          'Max Meal Guide',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      SizedBox(height: 16),
      _buildListTile(
        Icons.restaurant,
        'Meals',
        () => Navigator.of(context).pushReplacementNamed('/'),
      ),
      _buildListTile(
        Icons.settings,
        'Filters',
        () => Navigator.of(context).pushReplacementNamed(FiltersPage.routeName),
      ),
    ];
    return Drawer(
      child: Column(
        children: children2,
      ),
    );
  }
}
