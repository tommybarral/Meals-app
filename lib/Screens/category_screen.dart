import 'package:flutter/material.dart';
import '../Models/DUMMY_DATA.dart';
import '../Widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {

  static const routeName = '/Category_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES.map((catData) {
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: CategoryItem(catData.id, catData.title, catData.color),
            );
          }).toList(),
        ),
      ),
    );
  }
}
