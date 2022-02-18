import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {

  static const routeName = '/Meal_details_screen';

  @override
  Widget build(BuildContext context) {

    final mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text('$mealId'),),
      body: Text('The meal - $mealId'),
    );
  }
}
