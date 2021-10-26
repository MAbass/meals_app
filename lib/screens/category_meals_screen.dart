import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = "/categories-meals";
  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final title = arguments['title'];
    final id = arguments['id'];
    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              categoryMeals[index].id,
              categoryMeals[index].title,
              categoryMeals[index].imageUrl,
              categoryMeals[index].duration,
              categoryMeals[index].complexity,
              categoryMeals[index].affordability);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
