import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class FruitJuiceDetail extends StatefulWidget {
  const FruitJuiceDetail({Key? key}) : super(key: key);


  @override
  _FruitJuiceDetailState createState() => _FruitJuiceDetailState();
}

class _FruitJuiceDetailState extends State<FruitJuiceDetail> {

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
      title: "MEYVE SULARI",
      imageUrl: "https://img.freepik.com/free-photo/drink-bottles-wooden-crate_23-2148785356.jpg?w=996&t=st=1686240818~exp=1686241418~hmac=7d0bcb07ddb39ee96d40fc3fa05bc23b67b24b178bd234a2a0f4a28560378bbd",
      info: "Meyve suyu veya sebze suyu, doğal olarak meyve ve sebze dokusunda bulunan sıvıdır. Meyve suları, ısı veya çözücü kullanılmadan, taze meyvelerin ezilmesi veya sıkıştırılması ile hazırlanılır. Örneğin, portakal suyu portakal meyvesinin özütüdür. Suyu almak için meyve sıkacağı ve meyve presi kullanılır.",
      products: [
        Product(
          title: "MEYVE SUYU",
          imageUrl: "https://img.freepik.com/free-photo/top-view-colorful-fruit-juices_23-2148227560.jpg?w=996&t=st=1686240897~exp=1686241497~hmac=bbcf8ead4df38a493b0fb96010033ab33c028fedda4a9631ba6705772a09173c",
          route: Constants.ROUTE_FRUITJUICE,
        ),


      ],
    );
  }

}

