import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/pages/LabelInfo.dart';
import 'package:project/utilities/routes.dart';

class NutritionValuesWidget extends StatelessWidget {
  String categoryName;
  String imageUrl;
  String productName;
  String productInfo;

  NutritionValuesWidget({
    required this.categoryName,
    required this.imageUrl,
    required this.productName,
    required this.productInfo,
  }
  );


  @override
  Widget build(BuildContext context) {
    return _buildNutriValuePage(context);
  }

  _buildNutriValuePage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
            height: 10.0
        ),
        _buildCategoryName(context),
        _buildProductImage(context),
        _buildProductName(context),
        Text(
          'BESİN DEĞERLERİ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),
        ),
        _buildNutriValueInfo(context),
      ],
    );
  }


  _buildCategoryName(BuildContext context) {
    return Center(
      child: Text(
        this.categoryName,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }

  _buildProductImage(BuildContext context) {
    return ClipOval(
      child: Container(
        child: Image.network(this.imageUrl),
        alignment: Alignment.topCenter,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: Colors.blue.shade50,
          ),
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue.withOpacity(0.5),
        ),
      ),
    );
  }

  _buildProductName(BuildContext context) {
    return Center(
      child: Text(
        this.productName,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  _buildNutriValueInfo(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Text(
          this.productInfo,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.5,
          ),
        ),
      ),
    );
  }
}
