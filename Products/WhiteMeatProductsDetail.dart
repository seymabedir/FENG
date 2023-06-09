import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ProductDetail.dart';

class WhiteMeatProductsDetail extends StatefulWidget {
  const WhiteMeatProductsDetail({Key? key}) : super(key: key);

  @override
  _WhiteMeatProductsDetailState createState() => _WhiteMeatProductsDetailState();
}

class _WhiteMeatProductsDetailState extends State<WhiteMeatProductsDetail> {
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
                icon: Icon(
                  Icons.home_outlined,),
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
      body: _buildProductPage(),
    );
  }

  _buildProductPage() {
    return _buildProductList();
  }

  _buildProductList() {
    return ProductDetail(
      categoryName: "BEYAZ ET",
      productName: "ET",
      imageUrl:
      "https://cdn.metro-online.com/-/media/Project/MCW/TR_Metro/ultrafresh-et/Hindi-Eti.jpg?rev=0524738c270c42c0871861f02149ae09&w=440&webp=1&hash=7984FAB5FE29C7AFA8EB967ED83E2999",
      avgRate: 3,
    );
  }
}
