import 'package:flutter/material.dart';


class SuggestionList extends StatefulWidget {
  String recipeName;
  String imageUrl;
  int ID;
  //final Clues = [];

  SuggestionList({required this.recipeName,
    required this.imageUrl,
    required this.ID,
  });

  @override
  State<SuggestionList> createState() => _SuggestionListState();

}


class _SuggestionListState extends State<SuggestionList> {
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildSugCard(context),
      ],
    );
  }

  _buildSugCard(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              //child:
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 395,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.white70,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(this.widget.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 395,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 125,
                    child: Text('GÜNÜN ÖNERİSİ : ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 150, //text uzunluğuna göre nasıl belirlenebilir ?
                    child: Text(this.widget.recipeName,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 22.5,
                    child: IconButton(
                      icon: Icon(
                        size: 30,
                        isFav ? Icons.favorite_border_outlined : Icons.favorite,
                        color: isFav ? Colors.black : Colors.red,
                      ),
                      onPressed: toggleIcon,
                    ),
                  ),
                ],
              ),
              //),
            ),
          ],
        ),
      ),
    );
  }

  void toggleIcon() {
    {
      setState(() {
        isFav = !isFav;
      });
    }
  }}