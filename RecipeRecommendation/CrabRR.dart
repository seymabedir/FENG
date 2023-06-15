import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RecipeRecWidget.dart';


class CrabRR extends StatelessWidget {
  const CrabRR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text(''),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: const Color.fromRGBO(200, 235, 254, 10),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  size: 42,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HOME);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.dataset_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
              SizedBox(width: 8,),
            ],
          ),
        ),
      ),
      body: _buildRecipeRecommendation(),
    );
  }

  _buildRecipeRecommendation() {
    return RecipeRecWidget(
      categoryName: "DENİZ ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/steamed-crabs_1387-220.jpg?w=996&t=st=1686237522~exp=1686238122~hmac=2466a3a0a554757356382c819006a6601437b33b2c1048ee246e2f21ee833bf4",
      productName: "YENGEÇ",
      recipes: [
        Recipe(
          recipeName: "TARİF",
          recipeImage: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
          route: "",
        ),
      ],
    );
  }
}




