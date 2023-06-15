import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RedMeatProductDetailWidget.dart';

class RedMeatProductsDetail extends StatefulWidget {
  const RedMeatProductsDetail({Key? key}) : super(key: key);

  @override
  _RedMeatProductsDetailState createState() => _RedMeatProductsDetailState();
}

class _RedMeatProductsDetailState extends State<RedMeatProductsDetail> {
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
      body: _buildProductPage(),
    );
  }

  _buildProductPage() {
    return _buildProductList();
  }

  _buildProductList() {
    return RedMeatProductDetailWidget(
      categoryName: "KIRMIZI ET",
      productName: " ET",
      imageUrl:
      "https://img.freepik.com/free-photo/vertical-view-fresh-raw-red-meats-green-garlics-brown-wooden-cutting-board-tomatoes-pepper-nude-color-towel-knife-dark-color-background_179666-47277.jpg?w=360&t=st=1686236928~exp=1686237528~hmac=d159447a9161f26479081c70bc23a171b9df38022943a63decccf018a5f2b621",
      avgRate: 3,
    );
  }
}
