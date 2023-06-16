import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/NutritionValuesWidget.dart';

class IceCreamNV extends StatelessWidget {
  const IceCreamNV({Key? key}) : super(key: key);

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
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.dataset_outlined,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
      body: _buildNutriValues(),
    );
  }

  _buildNutriValues() {
    return NutritionValuesWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl:
          "https://img.freepik.com/free-photo/ice-cream_144627-17284.jpg?w=360&t=st=1686232365~exp=1686232965~hmac=bdd71bf1c789afd411ba9e3431d314772af3c09d8e8fdc62aab03f013856f215",
      productName: "DONDURMA",
      productInfo: "\n 100gram için"
          "\n Enerji (k ve kcal) - 1100/260 "
          "\n Yağ (g) - 13 "
          "\n Doymuş Yağ (g)- 9.2 "
          "\n Karbonhidrat (g) - 32 "
          "\n Şeker (g) - 25 "
          "\n Lif (g) - 1.0 "
          "\n Protein (g) - 3.3 "
          "\n Tuz (g) – 0.2",
    );
  }
}



