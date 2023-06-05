import 'package:flutter/material.dart';


class ClueList extends StatefulWidget {
  String info;
  String imageUrl;
  int ID;
  //final Clues = [];

  ClueList({required this.info,
    required this.imageUrl,
    required this.ID,
  });

  @override
  State<ClueList> createState() => _ClueListState();

}


class _ClueListState extends State<ClueList> {
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildClueCard(context),
      ],
    );
  }

  _buildClueCard(BuildContext context) {
    return SingleChildScrollView(
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
                    top: 12,
                    left: 125, //text uzunluğuna göre nasıl belirlenebilir ?
                    child: Text(this.widget.info,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54, fontSize: 18, fontWeight: FontWeight.bold,),
                      ),
                  ),
                  //),
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
    );
  }

  void toggleIcon() {
    {
      setState(() {
        isFav = !isFav;
      });
    }
}}