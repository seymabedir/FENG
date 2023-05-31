import 'package:flutter/material.dart';
import 'package:project/pages/RecipeRecommendation.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/utilities/routes.dart';

class RecipeRecWidget extends StatelessWidget {
  String categoryName;
  String imageUrl;
  String productName;
  String recipes;
  String recipeImage;


  RecipeRecWidget({
    required this.categoryName,
    required this.imageUrl,
    required this.productName,
    required this.recipes,
    required this.recipeImage,
  }
  );


  @override
  Widget build(BuildContext context) {
    return _buildRecipeRecommendationPage(context);
  }

  _buildRecipeRecommendationPage(BuildContext context) {
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
          'ÖNERİLEN TARİFLER',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0,),
        ),
        _buildRecipeList(context),
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

  _buildRecipeList(BuildContext context) {
    return Column(
      children: [
        Center(
          child: InkWell(
            //onTap: ,
            child: ClipOval(
              child: Container(
                child: Image.network(this.recipeImage),
                alignment: Alignment.topCenter,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: Colors.lightBlueAccent.shade100,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          this.recipes,
          style: TextStyle(fontSize: 16.0,),
        ),
      ],
    );
  }

}
