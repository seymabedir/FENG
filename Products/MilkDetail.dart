import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ProductDetail.dart';

class MilkDetail extends StatefulWidget {
  const MilkDetail({Key? key}) : super(key: key);

  @override
  _MilkDetailState createState() => _MilkDetailState();
}

class _MilkDetailState extends State<MilkDetail> {
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
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      productName: "SÜT",
      imageUrl:
          "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      avgRate: 3,
    );
  }
}
