import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RecipeRecWidget.dart';


class ButterRR extends StatelessWidget {
  const ButterRR({Key? key}) : super(key: key);

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
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/top-view-two-slices-rye-dry-bread-as-toast-with-butter-breakfast-with-vintage-knife-it-everything-craft-paper_346278-650.jpg?w=996&t=st=1686232316~exp=1686232916~hmac=c820138b44a5903c0bed58f6a54c19e3f5b8661a92360a4c26d857bb6099033d",
      productName: "TEREYAĞI",
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




