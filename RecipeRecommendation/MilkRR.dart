import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RecipeRecWidget.dart';



class MilkRR extends StatelessWidget {
  const MilkRR({Key? key}) : super(key: key);

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
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      productName: "SÜT",
      recipes: [
        Recipe(
          recipeName: "SÜTLAÇ",
          recipeImage: "https://img.freepik.com/free-photo/milk-sweet-wooden-board_140725-4089.jpg?w=826&t=st=1686268246~exp=1686268846~hmac=28dabbeb52e3a2c0b627ffc46617cbd6d487fc9d0011bb34ddefcfad980851db",
          route: Constants.ROUTE_SUTLAC,
        ),
        Recipe(
          recipeName: "PUDİNG",
          recipeImage: "https://img.freepik.com/free-photo/high-angle-banana-chocolate-pudding_23-2148750299.jpg?w=826&t=st=1686268281~exp=1686268881~hmac=ea3795f799bc54aa671229fd9371eb841c432a2cc3d50962d4fb4d3874909b40",
          route: Constants.ROUTE_PUDDING,
        ),
      ],
    );
  }
}




