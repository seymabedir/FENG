import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class YoghurtHC extends StatelessWidget {
  const YoghurtHC({Key? key}) : super(key: key);

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
      body: _buildHealthyConsumption(),
    );
  }


  _buildHealthyConsumption() {
    return HealthyConsumptionWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/greek-yogurt-wooden-bowl-isolated-white-background_123827-22632.jpg?w=996&t=st=1686231965~exp=1686232565~hmac=b4a28162470b78fe69f747bf6de086549ada7de4f2f87b8b3bcd19636b7d64cd",
      productName: "YOĞURT",
      productInfo: "xxxxxxxxxxxx."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',
      condition: "xxxxxxxxxxxx."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',

    );
  }
}


