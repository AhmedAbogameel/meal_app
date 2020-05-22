import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/screens/categories_screen.dart';
import 'package:mealapp/screens/favorite_screen.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen(this.favoriteMeals);

  final List<Meal> favoriteMeals;

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  int _selectedPageIndex=0;

  List<Map<String,Object>> _pages;

  @override
  void initState() {
    _pages = [
      {'page':CategoriesScreen(),'title':'Categories'},
      {'page':FavoriteScreen(widget.favoriteMeals),'title':'Your favorite'}
    ];
    super.initState();
  }

  void _selectPage(index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,icon: Icon(Icons.category),title: Text('Categories'),),
          BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,icon: Icon(Icons.star),title: Text('Favorites'),),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
