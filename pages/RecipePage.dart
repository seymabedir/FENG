import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';


class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarifler')),
      body: Container(

      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.lightBlueAccent,
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  _GoHome(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _GoSearch(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  _GoFavItems(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  _GoCategories(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _GoHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HomePage(title: '');
    },));
  }

  void _GoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SearchPage();
    },));
  }

  void _GoFavItems(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavoriteItemPage();
    },));
  }

  void _GoCategories(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return CategoryPage();
    },));
  }
}