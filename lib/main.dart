import 'dart:ui';
import 'package:flutter/material.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      // home: CategoriesScreen(),
      initialRoute: '/', //default is /
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen()
      },
      // if a particular route is not found we can move to someother screen by doing this

      // onGenerateRoute: (settings) {
      //   print(settings.arguments);
      //   if(settings.name == '/meal-detail'){
      //     return ...;
      //   }else if(settings.name = '/something-else'){
      //     return ...;
      //   }
      //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },

      // if page does not exist we can do this

      // onUnknownRoute: (settings) =>
      //     MaterialPageRoute(builder: (ctx) => CategoriesScreen()),
    );
  }
}
