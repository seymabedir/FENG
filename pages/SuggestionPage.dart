import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/SuggestionList.dart';
//import 'package:project/widgets/SuggestionList.dart';

class SuggestionPage extends StatefulWidget {
  const SuggestionPage({Key? key}) : super(key: key);

  @override
  _SuggestionPageState createState() => _SuggestionPageState();
}

class _SuggestionPageState extends State<SuggestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
          title: const Text('ÖNERİLER'),
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
                icon: Icon(Icons.home_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HOME);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
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
      body: _buildSugPage(),
    );
  }

  _buildSugPage() {
    return Container(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
          if (index == 0) {
            return SizedBox(height: 5.0 , width: 10.0,);
          } else if (index == 2) {
            return SizedBox(height: 5.0 , width: 10.0,);
          } else {
            return _buildSugList();
          }
        },
      ),
    );
  }

  _buildSugList() {
    return SuggestionList(
      recipeName: "SÜTLAÇ",
      imageUrl: "https://img.freepik.com/free-photo/milk-sweet-wooden-board_140725-4089.jpg?w=826&t=st=1686263487~exp=1686264087~hmac=84c2a03e4faa6cb2cd31f451fe5f7328a1d8d26fd599f0a5b616b31ec35224e5",
      ID: 123,
    );
  }


}