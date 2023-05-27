import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';

class RecipeRecommendation_Product1 extends StatefulWidget {
  const RecipeRecommendation_Product1({Key? key}) : super(key: key);

  @override
  _RecipeRecommendation_Product1State createState() => _RecipeRecommendation_Product1State();
}

class _RecipeRecommendation_Product1State extends State<RecipeRecommendation_Product1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Önerilen Tarifler'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'KATEGORİ : SÜT VE SÜT ÜRÜNLERİ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ClipOval(
            child: Container(
              alignment: Alignment.topCenter,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.blue.shade50,
                ),
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue.withOpacity(0.5),
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('images/yemek.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'ITAMBE SÜT',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'ÖNERİLEN TARİFLER',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade200,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextButton(
                          child: Text('+',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.grey,),
                          ),
                          onPressed: () {
                            //_addItem();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
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



