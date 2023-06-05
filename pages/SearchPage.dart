import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

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
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
          title : const Text('ARAMA'),
          centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HOME);
                },
              ),
              IconButton(
                icon: Icon(Icons.search,
                color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
            ],
          ),
        ),
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
    );
  }

}
