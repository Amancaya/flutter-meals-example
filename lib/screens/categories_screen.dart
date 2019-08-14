import 'package:flutter/material.dart';

import '../items/cateroy_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DeliMeal"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          children:
            DUMMY_CATEGORIES.map(
                  (catData) => CategoryItem( catData ),
            ).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
