import 'package:flutter/material.dart';
import 'package:masterborger/screens/filters_screen.dart';
import 'package:masterborger/screens/tabs_sceen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          accentColor: Colors.amber,
          primarySwatch: Colors.pink,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline1: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))),
      home: TabsScreen(),
      routes: {
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
