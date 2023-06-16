import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ShrimpProductDetail.dart';

class ShrimpDetail extends StatefulWidget {
  const ShrimpDetail({Key? key}) : super(key: key);

  @override
  _ShrimpDetailState createState() => _ShrimpDetailState();
}

class _ShrimpDetailState extends State<ShrimpDetail> {
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
    return ShrimpProductDetail(
      categoryName: "DENİZ ÜRÜNLERİ",
      productName: "KARİDES",
      imageUrl:
          "https://img.freepik.com/free-photo/two-tail-shrimp-with-fresh-lemon-rosemary-white_2829-18146.jpg?w=740&t=st=1686237608~exp=1686238208~hmac=b803acfdd4c2f27f32e6ec6adb7dd779ada3cb46263609a262d499c5b8990707",
      avgRate: 3,
    );
  }
}
