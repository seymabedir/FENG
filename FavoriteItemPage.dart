import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/CategoryPage.dart';


class FavoriteItemPage extends StatefulWidget {
  const FavoriteItemPage({Key? key}) : super(key: key);

  @override
  _FavoriteItemPageState createState() => _FavoriteItemPageState();
}

class _FavoriteItemPageState extends State<FavoriteItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'FAVORİLER',
          ),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 7.5,
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
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 7.5,
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
                  width: 50,
                ),
                ClipOval(
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 7.5,
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
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 7.5,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text('+',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.grey,),
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
                icon: Icon(Icons.favorite_border_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
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

  void _GoCategories(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return CategoryPage();
    },));
  }
}



