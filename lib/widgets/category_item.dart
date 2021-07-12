//Imports
import 'package:first_vscode/screens/category_meal_screen.dart';
import 'package:flutter/material.dart';

// Class parameters
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
// constructor
  CategoryItem(this.id, this.title, this.color);
  // identify the selected id and title
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(title, style: Theme.of(context).textTheme.title),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.6),
                  color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: color,
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
