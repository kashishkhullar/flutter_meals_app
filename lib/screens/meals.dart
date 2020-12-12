import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The recepies"),
      ),
      body: Center(
        child: Text('The recepies for this category'),
      ),
    );
  }
}
