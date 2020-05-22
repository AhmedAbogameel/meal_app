import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen(this.favoriteMeals);

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
      return Center(child: Text('You have no favorites yet - try adding some!'),);
    }
    else{
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            duration: favoriteMeals[index].duration,
          );
        },
      );
    }
  }
}
