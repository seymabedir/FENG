import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    setState(() {
      _searchText = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
          title : const Text('ARAMA'),
          centerTitle: true,
      ),
      body: Column(
      children: [
        SizedBox(height: 20, width: 10),
        Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            textAlign: TextAlign.left,
            maxLines: 1,
            controller: _searchController,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                color: Colors.grey,
              ),
              labelText: 'ARAMA',
              suffixIcon: IconButton(
                alignment: Alignment.centerLeft,
                icon: const Icon(Icons.search, color: Colors.black,),
                onPressed: _performSearch,
              ),
            ),
          ),
        ),
        /*Expanded(
          child: ListView.builder(
            itemCount: 20,
            // Replace with the actual number of items in your search results
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
                // Implement your item widget here
              );
            },
          ),
        ),*/
      ),
      ]
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
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  _GoFavItems(context);
                },
              ),
              IconButton(
                icon: const Icon(Icons.dataset_outlined),
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
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return HomePage(title: '');
      },
    ));
  }

  void _GoFavItems(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return FavoriteItemPage();
      },
    ));
  }

  void _GoCategories(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return CategoryPage();
      },
    ));
  }
}
