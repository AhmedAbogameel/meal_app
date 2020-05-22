import 'package:flutter/material.dart';
import 'package:mealapp/screens/fliters_screen.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(icon,title,onTap){
    return ListTile(
      leading: Icon(icon,size: 26,),
      title: Text(title,style: TextStyle(fontFamily: 'RobotoCondensed',fontSize: 24,fontWeight: FontWeight.bold),),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
            child: Text('Cooking UP!',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 27,color: Theme.of(context).primaryColor),),
          ),
          SizedBox(height: 20,),
          buildListTile(Icons.restaurant, 'Meals', ()=> Navigator.pushReplacementNamed(context, '/')),
          buildListTile(Icons.settings, 'Filters', ()=> Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName)),
        ],
      ),
    );
  }
}
