import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/HealthyConsumption.dart';
import 'package:project/pages/LabelInfo.dart';
import 'package:project/pages/NutritionValues.dart';
import 'package:project/pages/RecipeRecommendation.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';
import 'package:project/pages/ReportPage.dart';
import 'package:project/widgets/ProductDetail.dart';


class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
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
          color: Colors.lightBlueAccent,
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  _GoHome(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _GoSearch(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  _GoFavItems(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  _GoCategories(context);
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
        imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
        avgRate: "3.0",
    );


  }










    /*return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori : Kategori 1 '),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'ÜRÜN 1',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ClipOval(
            child: Container(
              alignment: Alignment.topCenter,
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5.0,
                  color: Colors.blue.shade50,
                ),
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue.withOpacity(0.5),
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('images/yemek.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                    //yıldızlar
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onPressed: () {
                              //_GoCategories(context);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onPressed: () {
                              //_GoCategories(context);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onPressed: () {
                              //_GoCategories(context);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.star_border_outlined,
                              //color: Colors.yellow,
                            ),
                            onPressed: () {
                              //_GoCategories(context);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.star_border_outlined,
                              //color: Colors.yellow,
                            ),
                            onPressed: () {
                              //_GoCategories(context);
                            },
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                        '3.0',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                ),
              ),
              SizedBox(
                //height: 85,
                width: 175,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    width: 40,
                    //height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        isPressed ? Icons.favorite_border_outlined : Icons.favorite,
                        color: isPressed ? Colors.black : Colors.red,
                      ),
                      onPressed: toggleIcon,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: 40,
                    //height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.edit_square,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        _GoReport(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 60,
            width: 300,
          ),
          Row(
            children: [
              SizedBox(
                width: 7.5,
                height: 10,
              ),
              Column(
                children: [
                  ClipOval(
                    child: TextButton(
                      onPressed: () {
                        _GoLabelInfo_Product1(context);
                      },
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.lightBlueAccent.shade100,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text('Etiket \n Bilgileri'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
              Column(
                children: [
                  ClipOval(
                    child: TextButton(
                      onPressed: () {
                        _GoNutritionValues_Product1(context);
                      },
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.lightBlueAccent.shade100,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text('Besin \n Değerleri'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
              Column(
                children: [
                  ClipOval(
                    child: TextButton(
                      onPressed: () {
                        _GoHealthyConsumption_Product1(context);
                      },
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.lightBlueAccent.shade100,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text('Sağlıklı \n Tüketim'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
                height: 10,
              ),
              Column(
                children: [
                  ClipOval(
                    child: TextButton(
                      onPressed: () {
                        _GoRecipeRecommendation_Product1(context);
                      },
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.lightBlueAccent.shade100,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blue,
                          image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text('Önerilen \n Tarifler'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),*/



  void _GoHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return HomePage(title: '');
      },
    ));
  }

  void _GoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return SearchPage();
      },
    ));
  }

  void _GoFavItems(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return FavoriteItemPage();
      },
    ));
  }

  void _GoCategories(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return CategoryPage();
      },
    ));
  }

  void toggleIcon() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  void _GoReport(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return ReportPage();
      },
    ));
  }

  void _GoLabelInfo_Product1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return LabelInfo();
      },
    ));
  }

  void _GoNutritionValues_Product1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return NutritionValues();
      },
    ));
  }

  void _GoHealthyConsumption_Product1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return HealthyConsumption();
      },
    ));
  }

  void _GoRecipeRecommendation_Product1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return RecipeRecommendation();
      },
    ));
  }


}
