import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  static const String routeName = "/mealDetails";

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Center(
        child: Text("$id"),
      ),
    );
  }
}
