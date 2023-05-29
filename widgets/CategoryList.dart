import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import '../pages/CategoryDetail.dart';
import 'package:project/utilities/routes.dart';

class CategoryList extends StatelessWidget {
  String title;
  String imageUrl;
  //String info;
  //List<String> products;

  CategoryList(
      {required this.title,
      required this.imageUrl,
     // required this.info,
      //required this.products
     });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildCategoryCard(context),
        _buildCategoryCard(context),
      ],
    );
  }

  _buildCategoryCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY_DETAIL);
        //_GoCategory1(context);
      },
      child:
          Padding(
            padding: const EdgeInsets.only(left: 45.0,),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                  height: 10,
                ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 120,
              height: 150,
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
                    child: Image.network(this.imageUrl),
                    width: 120,
                    height: 150,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 5.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          this.title,
                          style: TextStyle(
                            fontSize: 16,
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

  /*void _GoCategory1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Category1();
    },));
  }*/
}
