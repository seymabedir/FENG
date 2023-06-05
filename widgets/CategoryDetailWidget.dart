import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

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
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _buildCategoryImage() {
    return Container(
      //child: Image.network(this.imageUrl),
      alignment: Alignment.topCenter,
      width: 200,
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(this.imageUrl),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          width: 5.0,
          color: Colors.white,
        ),
      ),
    );
  }

  _buildCategoryInfo() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 5.0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
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
                    width: 80,
                    height: 30,
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
                        this.products,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
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
