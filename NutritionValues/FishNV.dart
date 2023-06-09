import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/NutritionValuesWidget.dart';

class FishNV extends StatelessWidget {
  const FishNV({Key? key}) : super(key: key);

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
      categoryName: "DENİZ ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/side-view-fresh-raw-fishes-brown-wooden-cutting-board-dark-mix-colors-table-with-free-space_179666-18208.jpg?w=996&t=st=1686237371~exp=1686237971~hmac=f976878adf6b5a0dc9edc8c483ca03afff24917d2e39438740e3b4b18e8450c8",
      productName: "BALIK",
      productInfo: "xxxxxxxxxxxx."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',
    );
  }
}



