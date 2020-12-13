import 'package:flutter/material.dart';
import 'package:flutter_meals_app/dummy_data.dart';

class Meals extends StatelessWidget {
  // its a good practise to add route names like this and use it in the routes list in main
  static const routeName = "/meals";

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = arguments["title"];
    final categoryId = arguments['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}
