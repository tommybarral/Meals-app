import 'package:flutter/material.dart';
import 'package:mealsapp/Screens/meal_details_screen.dart';
import '../Models/meal.dart';

class MealItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({this.id, this.title, this.imageUrl, this.duration, this.complexity, this.affordability});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
      return 'Simple';
      break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'unknown';
    }
}

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'unknown';
    }
  }

  void _selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDetailsScreen.routeName, arguments: id);
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 280,
                    color: Colors.black45,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Text(title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6,),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6,),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
