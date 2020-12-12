import 'package:flutter/material.dart';
import 'package:flutter_meals_app/dummy_data.dart';
import 'package:flutter_meals_app/widgets/category.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(category.title, category.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
