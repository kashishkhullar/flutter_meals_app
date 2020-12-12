import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  final String categoryId, categoryTitle;

  Meals(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The recepies for this category'),
      ),
    );
  }
}
