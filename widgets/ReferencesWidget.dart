import 'package:flutter/material.dart';

class ReferencesWidget extends StatefulWidget {
  final String info;
  final String imageUrl;
  final int ID;

  ReferencesWidget({
    required this.info,
    required this.imageUrl,
    required this.ID,
  });

  @override
  _ReferencesWidgetState createState() => _ReferencesWidgetState();
}

class _ReferencesWidgetState extends State<ReferencesWidget> {
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
              ],
            ),
          ),
        ],
      ),
    );
  }

}
