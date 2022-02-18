import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealsapp/Screens/category_meals_screen.dart';
import 'package:mealsapp/Screens/category_screen.dart';
import 'package:mealsapp/Screens/meal_details_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        //colorScheme: Theme.of(context).colorScheme.copyWith(primary
          //  : Colors.deepOrange),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          subtitle1: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoryScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
      },
    );
  }
}