import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import '../pages/CategoryDetail.dart';
import 'package:project/utilities/routes.dart';

class CategoryDetailWidget extends StatelessWidget {
  String title;
  String imageUrl;
  String info;
  String products;

  CategoryDetailWidget(
      {required this.title,
      required this.imageUrl,
      required this.info,
      required this.products}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        _buildCategoryTitle(),
        SizedBox(
          height: 5.0,
        ),
        _buildCategoryImage(),
        SizedBox(
          height: 5.0,
        ),
        _buildCategoryInfo(),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children : [
          _buildCategoryProducts(context),
        _buildCategoryProducts(context),
        _buildCategoryProducts(context),
    ]
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [
              _buildCategoryProducts(context),
              _buildCategoryProducts(context),
              _buildCategoryProducts(context),
            ]
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  _buildCategoryTitle() {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _buildCategoryImage() {
    return Container(
      child: Image.network(this.imageUrl),
      alignment: Alignment.topCenter,
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(
          width: 5.0,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue.withOpacity(0.5),
      ),
    );
  }

  _buildCategoryInfo() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 5.0,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: 300,
      height: 150,
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Text(
          this.info,
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  _buildCategoryProducts(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY_PRODUCT);
            //_GoCategory1(context);
          },
          child: Container(
            alignment: Alignment.bottomCenter,
            width: 80,
            height: 80,
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
                    width: 80,
                    height: 30,
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
                        this.products,
                        style: TextStyle(
                          fontSize: 6,
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
        ),
      ],
    );
  }
}
