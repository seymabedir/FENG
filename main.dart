import 'package:flutter/material.dart';
import 'package:project/pages/AccountInfoPage.dart';
import 'package:project/pages/BoardPage.dart';
import 'package:project/pages/CategoryPage.dart';
import 'package:project/pages/CluePage.dart';
import 'package:project/pages/ContactPage.dart';
import 'package:project/pages/FavCluesPage.dart';
import 'package:project/pages/FavRecipesPage.dart';
import 'package:project/pages/FavSuggestionsPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/HelpPage.dart';
import 'package:project/pages/RecipePage.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/SettingsPage.dart';
import 'package:project/pages/SuggestionPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Eat',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,//white
      ),
      home: const HomePage(title: ''),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              icon: Icon(Icons.account_circle_outlined),
            );
          }),
        ],
        title: Text(title),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.lightBlueAccent,
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.grey,
                ),
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

      endDrawer: Drawer(
        backgroundColor: Colors.white70,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,//color.cyan.shade50
              ),
              child: Align(
              alignment: Alignment.center,
              child: Text(' PROFİL'),
            ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white60,
                border: Border.all(
                    color: Colors.white60,
                    width: 2.0,
                    style: BorderStyle.solid
                ),
              ),
        child:ListTile(
              leading:
              Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black87
              ),
              title: const Text('Hesap Bilgileri'),
              onTap: () {
                _GoAccountInfo(context);
              },
            ),
           ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
              color: Colors.white60,
              width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        child:ListTile(
              leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black87
              ),
              title: const Text('Favori İpuçları'),
              onTap: () {
                _GoFavClues(context);
              },
            ),
          ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
              color: Colors.white60,
              width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        child:ListTile(
              leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black87
              ),
              title: const Text('Favori Yemek Önerileri'),
              onTap: () {
                _GoFavSuggestions(context);
              },
            ),
           ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
              color: Colors.white60,
              width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        child:ListTile(
              leading: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black87
              ),
              title: const Text('Favori Tarifler'),
              onTap: () {
                _GoFavRecipes(context);
              },
            ),
           ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(
              color: Colors.white60,
              width: 2.0,
              style: BorderStyle.solid
          ),
        ),
        child:ListTile(
              leading: Icon(
                  Icons.view_stream_outlined,
                  color: Colors.black87
              ),
              title: const Text('Dolap'),
              onTap: () {
                _GoBoard(context);
              },
            ),
           ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () {
                _GoClues(context);
              },
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('images/yemek.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'İPUÇLARI',
                    style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _GoSuggestions(context);
              },
              child: Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('images/yemek.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'ÖNERİLER',
                    style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 230,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton( //******* son iki item için 1. ********
                      onPressed: () {
                        //_GoClues(context);
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                            color: Colors.indigo,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          color: Colors.blue.withOpacity(0.5),
                          image: DecorationImage(
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'SON GÖRÜNTÜLENEN ITEM 1',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                    TextButton( //******* son iki item için 2. ********
                      onPressed: () {
                        //_GoClues(context);
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                            color: Colors.indigo,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          color: Colors.blue.withOpacity(0.5),
                          image: DecorationImage(
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'SON GÖRÜNTÜLENEN ITEM 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
                child: const Align(
                 alignment: Alignment.center,
                child: Text('MENÜ'),
                ),
            ),
            ListTile(
              leading: Icon(
                  Icons.settings,
                  color: Colors.black87
              ),
              title: const Text('Ayarlar'),
              onTap: () {
                _GoSettings(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.help,
                  color: Colors.black87
              ),
              title: const Text('Yardım'),
              onTap: () {
                _GoHelp(context);
              },
            ),
            ListTile(
              leading: Icon(
                  Icons.message_outlined,
                  color: Colors.black87
              ),
              title: const Text('İletişim'),
              onTap: () {
                _GoContact(context);
              },
            ),
          ],
        ),
      ),
    );
  }


  void _GoRecipes(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return RecipePage();
    },));
  }

  void _GoClues(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return CluePage();
    },));
  }

  void _GoSuggestions(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SuggestionPage();
    },));
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

  void _GoSettings(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SettingsPage();
    },));
  }

  void _GoHelp(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HelpPage();
    },));
  }

  void _GoContact(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ContactPage();
    },));
  }

  void _GoAccountInfo(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AccountInfoPage();
    },));
  }

  void _GoFavClues(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavCluesPage();
    },));
  }

  void _GoFavSuggestions(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavSuggestionsPage();
    },));
  }

  void _GoFavRecipes(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavRecipesPage();
    },));
  }

  void _GoBoard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return BoardPage();
    },));
  }
}