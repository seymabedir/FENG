import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/NutritionValuesWidget.dart';

class AyranNV extends StatelessWidget {
  const AyranNV({Key? key}) : super(key: key);

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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HOME);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
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
      imageUrl: "https://img.freepik.com/free-photo/ayran-drink-with-mint-cucumber-glass-wooden-table_123827-21428.jpg?w=996&t=st=1686232158~exp=1686232758~hmac=dfbd09bf4b19944fd01a4878e8cba36619c0d8a3481c0d692644a6642ddf601d",
      productName: "AYRAN",
      productInfo: "xxxxxxxxxxxx."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',
    );
  }
}



