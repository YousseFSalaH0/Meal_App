//Imports
import 'package:first_vscode/screens/categories_screen.dart';
import 'package:first_vscode/screens/category_meal_screen.dart';
import 'package:first_vscode/screens/meal_details_screen.dart';
import 'package:flutter/material.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1),
                ),
                title: TextStyle(
                    fontSize: 20,
                    // fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold),
              )),
      // Set the routes "screens"
      routes: {
        //Meal name
        '/': (context) => CategoriesScreen(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal App'),
      ),
      body: null,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
