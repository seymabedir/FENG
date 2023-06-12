import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryList.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text('KATEGORİLER'),
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
                  Icons.home_outlined,
                  //color: Colors.black,
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
                icon: Icon(
                  Icons.dataset_outlined,
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
      body: _buildCategoryPage(),
    );
  }

  Widget _buildCategoryPage() {
    List<Category> categories = [
      Category(
        title: "SÜT VE SÜT ÜRÜNLERİ",
        imageUrl: "https://www.dairyindustries.com/wp-content/uploads/thumbnail_Dairy-Products.jpg",
        route: Constants.ROUTE_DAIRY,
      ),
      Category(
        title: "KIRMIZI ET",
        imageUrl: "https://cdn.yeniakit.com.tr/images/detail/1565543377-2d0cd8.jpg",
        route: Constants.ROUTE_REDMEAT,
      ),
      Category(
        title: "DENİZ ÜRÜNLERİ",
        imageUrl: "https://aydinlarseafood.com/wp-content/uploads/2023/02/aydinlar-sea-food-neden-biz-570x330.jpg",
        route: Constants.ROUTE_SEAFOOD,
      ),
      Category(
        title: "BEYAZ ET",
        imageUrl: "https://img.freepik.com/premium-photo/raw-chicken-meat-fillet-thigh-wings-legs_82893-9312.jpg?w=740",
        route: Constants.ROUTE_WHITEMEAT,
      ),
      Category(
          title: "KONSERVE GIDALAR",
          imageUrl: "https://img.freepik.com/free-photo/jars-with-preserved-food-assortment_23-2149239013.jpg?w=900&t=st=1686229208~exp=1686229808~hmac=bba18b7931db4b897412490a470e75c3f42f26007244096855248946783a5860",
          route: Constants.ROUTE_CANNED_FOODS,
      ),
      Category(
          title: "MEYVE SULARI",
          imageUrl: "https://img.freepik.com/free-photo/healthy-juice-bottles-arrangement_23-2148785309.jpg?w=360&t=st=1686229346~exp=1686229946~hmac=7e740e2087823a429955cb5d2ba6cca248142c820f5918d933bd2c48ac94dd4b",
          route: Constants.ROUTE_FRUIT_JUICE,
      ),
      Category(
          title: "HAZIR GIDALAR",
          imageUrl: "https://www.yeniadana.net/resimler/2018-10/31/0934339733375.jpg",
          route: Constants.ROUTE_PREPARED_FOODS,
      ),

    ];

    List<Widget> rows = [];
    for (int i = 0; i < categories.length; i += 2) {
      if (i + 1 < categories.length) {
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCategoryList(categories[i]),
            _buildCategoryList(categories[i + 1]),
          ],
        ));
      } else {
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildCategoryList(categories[i])],
        ));
      }
    }

    return ListView(
      children: rows,
    );
  }

  _buildCategoryList(Category category) {
    return CategoryList(
      categories: [category],
    );
  }
}