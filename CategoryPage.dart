import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/Category1.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/SearchPage.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        title: const Text('KATEGORİLER'),
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _GoCategory1(context);
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.withOpacity(0.5),
                  image: DecorationImage(
                    image: AssetImage('images/yemek.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container (
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 5.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                     child: Text(
                     'KATEGORİ 1',
                      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                    ),
                ),
               ),
              ),
             ),
            ),
            TextButton(
              onPressed: () {
                //_GoCategory2(context);
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.withOpacity(0.5),
                  image: DecorationImage(
                    image: AssetImage('images/yemek.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container (
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 5.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'KATEGORİ 2',
                        style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 3',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 4',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 5',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 6',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 7',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //_GoClues(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.5),
                      image: DecorationImage(
                        image: AssetImage('images/yemek.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container (
                        width: 120,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5.0,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'KATEGORİ 8',
                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]
        ),
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
                icon: Icon(Icons.dataset_outlined,
                color: Colors.grey,
                ),
                onPressed: () {
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

  void _GoCategory1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Category1();
    },));
  }


}



