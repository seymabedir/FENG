import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/LobsterProductDetail.dart';

class LobsterDetail extends StatefulWidget {
  const LobsterDetail({Key? key}) : super(key: key);

  @override
  _LobsterDetailState createState() => _LobsterDetailState();
}

class _LobsterDetailState extends State<LobsterDetail> {
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
    return LobsterProductDetail(
      categoryName: "DENİZ ÜRÜNLERİ",
      productName: "ISTAKOZ",
      imageUrl:
          "https://img.freepik.com/free-photo/delicious-cooked-sea-food_23-2149409251.jpg?w=996&t=st=1686237459~exp=1686238059~hmac=6ee129a59c243b10d326f6966cd74be6bc98f82711a31720958d3cf4b9591133",
      avgRate: 3,
    );
  }
}
