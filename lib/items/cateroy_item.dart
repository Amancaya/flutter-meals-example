import 'package:flutter/material.dart';

import '../models/category.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {

  final Category categoryItem;

  CategoryItem(this.categoryItem);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': categoryItem.id,
        'title': categoryItem.title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          categoryItem.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
                categoryItem.color.withOpacity(0.7),
                categoryItem.color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
