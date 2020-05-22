import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem(this.id,this.title,this.color);

  final String id;
  final String title;
  final Color color;

  void selectCategory(context){
    Navigator.pushNamed(context, CategoryMealsScreen.routeName,arguments: {
      'id':id,
      'title':title
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
