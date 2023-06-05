import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class CategoryList extends StatelessWidget {
  String title;
  String imageUrl;

  CategoryList({
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          _buildCategoryCard(context),
          _buildCategoryCard(context),
        ],
      ),
    );
  }

  _buildCategoryCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY_DETAIL);
        //_GoCategory1(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0
            //left: 45.0,
            ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            width: 10,
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: 30,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 150,
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.5),
              ),
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(this.imageUrl),
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 5.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(
                        child: Text(
                          this.title,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
