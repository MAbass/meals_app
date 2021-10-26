import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottom_tabs_widget.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            subtitle1: TextStyle(
                fontSize: 20,
                fontFamily: "RobotoCondensed",
                fontWeight: FontWeight.bold)),
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      // by default, initial route is /
      routes: {
        "/": (ctx) => TabsBottomScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
/*      onGenerateRoute: (arguments) {
        print(arguments);
        if (arguments.name == "/") {
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        } else if (arguments.name == CategoryMealsScreen.routeName) {
          return MaterialPageRoute(builder: (ctx) => CategoryMealsScreen());
        } else if (arguments.name == MealDetailScreen.routeName) {
          return MaterialPageRoute(builder: (ctx) => MealDetailScreen());
        } else {
          return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        }
      },*/
    );
  }
}
