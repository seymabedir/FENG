import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/FruitJuiceProductDetailWidget.dart';

class FruitJuiceProductDetail extends StatefulWidget {
  const FruitJuiceProductDetail({Key? key}) : super(key: key);

  @override
  _FruitJuiceProductDetailState createState() => _FruitJuiceProductDetailState();
}

class _FruitJuiceProductDetailState extends State<FruitJuiceProductDetail> {
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
      body: _buildProductPage(),
    );
  }

  _buildProductPage() {
    return _buildProductList();
  }

  _buildProductList() {
    return FruitJuiceProductDetailWidget(
      categoryName: "MEYVE SULARI",
      productName: "MEYVE SUYU",
      imageUrl:
          "https://img.freepik.com/free-photo/top-view-colorful-fruit-juices_23-2148227560.jpg?w=996&t=st=1686240897~exp=1686241497~hmac=bbcf8ead4df38a493b0fb96010033ab33c028fedda4a9631ba6705772a09173c",
      avgRate: 3,
    );
  }
}
