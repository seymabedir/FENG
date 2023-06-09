import 'package:flutter/material.dart';

class ClueList extends StatefulWidget {
  final String info;
  final String imageUrl;
  final int ID;

  ClueList({
    required this.info,
    required this.imageUrl,
    required this.ID,
  });

  @override
  _ClueListState createState() => _ClueListState();
}

class _ClueListState extends State<ClueList> {
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 395,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Colors.white70,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(widget.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 395,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 370,
                    height: 100,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.info,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 1,
                  top: 1,
                  child: IconButton(
                    icon: Icon(
                      isFav ? Icons.favorite_border_outlined : Icons.favorite,
                      color: isFav ? Colors.black : Colors.red,
                    ),
                    onPressed: toggleIcon,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void toggleIcon() {
    setState(() {
      isFav = !isFav;
    });
  }
}
