import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/Category_meals_screen';

  /*
  PARSING DATA FROM CATEGORY_ITEM
  final String categoryId;
  final String categoryTitle;
  CategoryMealsScreen(this.categoryId, this.categoryTitle);
   */

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: Center(
        child: Text(categoryId),
      ),
    );
  }
}
