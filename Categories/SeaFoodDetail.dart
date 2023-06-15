import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class SeaFoodDetail extends StatefulWidget {
  const SeaFoodDetail({Key? key}) : super(key: key);


  @override
  _SeaFoodDetailState createState() => _SeaFoodDetailState();
}

class _SeaFoodDetailState extends State<SeaFoodDetail> {

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
          )
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
      body: _buildCategoryDetails(context),


    );
  }

  _buildCategoryDetails(BuildContext context) {
    return _buildCategoryDetailWidget(context);
  }

  _buildCategoryDetailWidget(context) {
    return CategoryDetailWidget(
      title: "DENİZ ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/top-view-assortment-seafood-with-tomatoes_23-2148643583.jpg?w=996&t=st=1686237076~exp=1686237676~hmac=35e072297b74f3f3d670bcb41e7f8ae5d0a5f0ec7baa1640aca3529a7d7cc316",
      info: "Su ürünleri, denizden veya tatlı sudan elde edilen her türlü gıda maddesine verilen ortak addır. Deniz ürünleri, balık, ıstakoz, karides gibi canlılardan oluşmaktadır. Deniz ürünleri, özellikle ihtiva ettiği yoğun omega yağı ile önerilen menülerdendir.",
      products: [
        Product(
          title: "BALIK",
          imageUrl: "https://img.freepik.com/free-photo/side-view-fresh-raw-fishes-brown-wooden-cutting-board-dark-mix-colors-table-with-free-space_179666-18208.jpg?w=996&t=st=1686237371~exp=1686237971~hmac=f976878adf6b5a0dc9edc8c483ca03afff24917d2e39438740e3b4b18e8450c8",
          route: Constants.ROUTE_FISH,
        ),
        Product(
          title: "MİDYE",
          imageUrl: "https://img.freepik.com/free-photo/top-view-delicious-seafood-composition_23-2148926778.jpg?w=740&t=st=1686237421~exp=1686238021~hmac=c5abdd4593e25a3ddbaebe29fef0680cd9b208f8febe5ea5bd4339c94cc7b62d",
          route: Constants.ROUTE_MUSSEL,
        ),
        Product(
          title: "ISTAKOZ",
          imageUrl: "https://img.freepik.com/free-photo/delicious-cooked-sea-food_23-2149409251.jpg?w=996&t=st=1686237459~exp=1686238059~hmac=6ee129a59c243b10d326f6966cd74be6bc98f82711a31720958d3cf4b9591133",
          route: Constants.ROUTE_LOBSTER,
        ),
        Product(
          title: "YENGEÇ",
          imageUrl: "https://img.freepik.com/free-photo/steamed-crabs_1387-220.jpg?w=996&t=st=1686237522~exp=1686238122~hmac=2466a3a0a554757356382c819006a6601437b33b2c1048ee246e2f21ee833bf4",
          route: Constants.ROUTE_CRAB,
        ),
        Product(
          title: "KARİDES",
          imageUrl: "https://img.freepik.com/free-photo/two-tail-shrimp-with-fresh-lemon-rosemary-white_2829-18146.jpg?w=740&t=st=1686237608~exp=1686238208~hmac=b803acfdd4c2f27f32e6ec6adb7dd779ada3cb46263609a262d499c5b8990707",
          route: Constants.ROUTE_SHRIMP,
        ),

      ],
    );
  }

}

