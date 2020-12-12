import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/meals.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Meals();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ink well is same as gesture detector but provides the ripple effect on tap
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // const optmizes the build process
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
