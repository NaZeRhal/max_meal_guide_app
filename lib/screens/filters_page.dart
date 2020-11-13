import 'package:flutter/material.dart';
import 'package:max_meal_guide_app/widgets/main_drawer.dart';

class FiltersPage extends StatefulWidget {
  static const routeName = '/filters';
  final Function setFiltersData;
  final Map<String, bool> initFiltersData;

  const FiltersPage(this.initFiltersData, this.setFiltersData);

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  bool _isGlutenFree = false;
  bool _isVegetarian = false;
  bool _isVegan = false;
  bool _isLactoseFree = false;

  @override
  initState() {
    _isGlutenFree = widget.initFiltersData['gluten_free'];
    _isVegetarian = widget.initFiltersData['vegetarian'];
    _isVegan = widget.initFiltersData['vegan'];
    _isLactoseFree = widget.initFiltersData['lactose_free'];
    super.initState();
  }

  Widget _buildSwitchListTile({
    @required String title,
    @required bool value,
    @required String subtitle,
    @required Function updateValue,
  }) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subtitle),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final selectedData = {
                  'gluten_free': _isGlutenFree,
                  'vegetarian': _isVegetarian,
                  'vegan': _isVegan,
                  'lactose_free': _isLactoseFree,
                };
                widget.setFiltersData(selectedData);
              })
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  title: 'Gluten-free',
                  value: _isGlutenFree,
                  subtitle: 'Only include gluten-free meals.',
                  updateValue: (newValue) =>
                      setState(() => _isGlutenFree = newValue),
                ),
                _buildSwitchListTile(
                  title: 'Vegetarian',
                  value: _isVegetarian,
                  subtitle: 'Only include vegetarian meals.',
                  updateValue: (newValue) =>
                      setState(() => _isVegetarian = newValue),
                ),
                _buildSwitchListTile(
                  title: 'Vegan',
                  value: _isVegan,
                  subtitle: 'Only include vegan meals.',
                  updateValue: (newValue) =>
                      setState(() => _isVegan = newValue),
                ),
                _buildSwitchListTile(
                  title: 'Lactose-free',
                  value: _isLactoseFree,
                  subtitle: 'Only include lactose-free meals.',
                  updateValue: (newValue) =>
                      setState(() => _isLactoseFree = newValue),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
