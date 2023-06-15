import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RecipeRecWidget.dart';


class PickleRR extends StatelessWidget {
  const PickleRR({Key? key}) : super(key: key);

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
      categoryName: "KONSERVE GIDALAR",
      imageUrl: "https://img.freepik.com/free-photo/pickled-vegetables-arrangement_23-2148606760.jpg?w=360&t=st=1686238126~exp=1686238726~hmac=a6d45d01ace1388af22430de4a34134e0940cb643d9de7847d9b3878b8f73a58",
      productName: "TURŞU",
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




