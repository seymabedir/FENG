import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class RecipeRecWidget extends StatelessWidget {
  String categoryName;
  String imageUrl;
  String productName;
  List<Recipe> recipes;

  RecipeRecWidget({
    required this.categoryName,
    required this.imageUrl,
    required this.productName,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return _buildRecipeRecommendationPage(context);
  }

  _buildRecipeRecommendationPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(height: 5.0),
        _buildCategoryName(context),
        _buildProductImage(context),
        _buildProductName(context),
        SizedBox(height: 5.0),
        Center(
          child: Container(
            width: 175,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white60,
            ),
            child: Text(
              'ÖNERİLEN TARİFLER',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _buildRecipeList(context),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSendRecipeButton(context),
            ],
          ),
        ),
      ],
    );
  }

  _buildCategoryName(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.categoryName,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  _buildProductImage(BuildContext context) {
    return ClipOval(
      child: Container(
        alignment: Alignment.topCenter,
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: Color.fromRGBO(13, 71, 161, 10),
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: NetworkImage(this.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildProductName(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.productName,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRecipeList(BuildContext context) {
    List<Widget> recipeWidgets = [];

    for (var recipe in this.recipes) {
      recipeWidgets.add(
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SUTLAC);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Color.fromRGBO(13, 71, 161, 80),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: NetworkImage(recipe.recipeImage),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  recipe.recipeName,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return recipeWidgets;
  }

  _buildSendRecipeButton(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Constants.ROUTE_SEND_RECIPE);
          },
          child: ClipOval(
            child: Container(
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
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
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Tarifinizi Bizimle Paylaşmak İster Misiniz?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Recipe {
  String recipeName;
  String recipeImage;

  Recipe({
    required this.recipeName,
    required this.recipeImage,
  });
}
