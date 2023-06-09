import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class PreparedFoodsDetail extends StatefulWidget {
  const PreparedFoodsDetail({Key? key}) : super(key: key);


  @override
  _PreparedFoodsDetailState createState() => _PreparedFoodsDetailState();
}

class _PreparedFoodsDetailState extends State<PreparedFoodsDetail> {

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
      title: "HAZIR/PAKETLİ GIDALAR",
      imageUrl: "https://img.freepik.com/free-photo/supermarket-banner-with-food_23-2149501010.jpg?w=1380&t=st=1686238657~exp=1686239257~hmac=cf44f8ec0745fe699f050cfef4f3a1a4f4cffa535b852b5bcbc38a8a082e07c8",
      info: "Paketli gıda (ambalajlı gıda), ülkenin yasalarına ve gıdanın doğasına uygun şekilde ambalajlanmış gıdaları ifade eder.Gıda ambalajının temel işlevi, gıdayı tüketiciye ulaşana sürece kadar fiziksel, kimyasal ve biyolojik olarak korumak; gıdaların kontamine olmasını (istenmeyen maddeler bulaşmasını) ve bozulmasını önlemek, içeriğini ve kalitesini muhafaza etmektir.",
      products: [
        Product(
          title: "KETÇAP",
          imageUrl: "https://img.freepik.com/free-photo/ketchup-tomato-sauce-with-fresh-tomato_1150-38249.jpg?w=900&t=st=1686229802~exp=1686230402~hmac=b3169fd2f446327a078efe74079de31fbcd89206a5ac8d5833f2dc952e68a7a0",
          route: Constants.ROUTE_KETCHUP,
        ),
        Product(
          title: "MAYONEZ",
          imageUrl: "https://img.freepik.com/premium-photo/plain-yogurt-wooden-bowl-table_37470-140.jpg?w=900",
          route: Constants.ROUTE_MAYONNAISE,
        ),


      ],
    );
  }

}

