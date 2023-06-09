import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class WhiteMeatDetail extends StatefulWidget {
  const WhiteMeatDetail({Key? key}) : super(key: key);


  @override
  _WhiteMeatDetailState createState() => _WhiteMeatDetailState();
}

class _WhiteMeatDetailState extends State<WhiteMeatDetail> {

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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.black,
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
                icon: Icon(Icons.dataset_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
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
      title: "BEYAZ ET",
      imageUrl: "https://img.freepik.com/free-photo/raw-chicken-fillet-with-garlic-pepper-rosemary-wooden-chopping-board_1150-37785.jpg?w=996&t=st=1686239310~exp=1686239910~hmac=4c8a803efa266f04e0f5ebd3953e768e5a054faed2206bc627ef68eb2d391b27",
      info: "Beyaz et, tavuk eti, ördek eti, kaz eti, horoz eti ve hindi eti gibi kümes hayvanlarıyla birlikte birçok deniz ürününü (örn. balık eti, yengeç eti, ahtapot eti ve kalamar eti) de içerisine alan bir sınıflandırmadır.[1] Kırmızı etten farklı, miyoglobin yoktur.[2] İsmini pişirilmeden önceki soluk veya açık renginden almaktadır.",
      products: [
        Product(
          title: "TAVUK",
          imageUrl: "https://img.freepik.com/free-photo/front-view-fresh-raw-chicken-with-tomatoes-dark-meal-animal-photo-food-color-chicken-kitchen-meat_179666-44050.jpg?w=996&t=st=1686239382~exp=1686239982~hmac=2e62175a23543e2a59403488c6c1b98b4ab653713bf0ca8a129aa1bc10ea8069",
          route: Constants.ROUTE_WHITE_MEAT,
        ),
        Product(
          title: "HİNDİ",
          imageUrl: "https://cdn.metro-online.com/-/media/Project/MCW/TR_Metro/ultrafresh-et/Hindi-Eti.jpg?rev=0524738c270c42c0871861f02149ae09&w=440&webp=1&hash=7984FAB5FE29C7AFA8EB967ED83E2999",
          route: Constants.ROUTE_WHITE_MEAT,
        ),



      ],
    );
  }

}

