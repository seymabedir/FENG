import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';
import 'package:project/pages/ProductList.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({Key? key}) : super(key: key);


  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: _buildCategoryDetails(context),


    );
  }

     /*body: Stack(
        children: [
          Positioned(
            right: 50,
            left: 50,
            top: 25,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5.0,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.5),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('images/yemek.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5.0,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: 300,
                  height: 150,
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Text(
                      'Bu grupta yer alan başlıca besinler süt, yoğurt ve peynirdir.'
                      '\n Süt grubu besinler protein, kalsiyum, '
                      'B2 vitamini (riboflavin) ve B12 vitamini başta olmak üzere '
                      'birçok besin ögesinin önemli kaynağıdır. '
                      '\n Süt grubu besinlerde bulunan kalsiyum '
                      'diğer besin kaynaklarına göre vücut tarafından daha iyi kullanılır. '
                      '\n Kalsiyum kemiklerin ve dişlerin sağlıklı gelişiminde ve '
                      'hücre çalışmasında önemli rol oynar. '
                      '\n Süt ve süt ürünlerinin içerdiği kaliteli protein '
                      'her yaş grubunda vücudun çalışması; '
                      'çocukluk döneminde büyüme, yetişkinlikte ise '
                      'doku onarımının sağlanması için gereklidir. '
                      '\n Bu grupta yer alan besinlerde bulunan B vitaminleri, '
                      'başta kırmızı kan hücreleri ile sinir hücreleri olmak üzere '
                      'tüm vücutta önemli işlevlere sahiptir. '
                      '\n Süt ve süt ürünleri yağ içeriği yönünden de zengindir. '
                      '\n Doymuş yağ ve kolesterol ile yağda eriyen A vitamini içerirler.',
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            _GoProduct1(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 1',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //_GoClues(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 2',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //_GoClues(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 3',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            //_GoClues(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 1',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //_GoClues(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 2',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            //_GoClues(context);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.5),
                              image: DecorationImage(
                                image: AssetImage('images/yemek.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 5.0,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    'ÜRÜN 3',
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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

  _buildCategoryDetails(BuildContext context) {
    return _buildCategoryDetailWidget(context);
  }

  _buildCategoryDetailWidget(context) {
    return CategoryDetailWidget(
      title: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      info: "xxxxxxxxxxxxxxxxxxxxx",
      products: "süt",
      //['SÜT', 'YOĞURT', 'PEYNİR', 'LOR-ÇÖKELEK', 'KREMA', 'AYRAN-KEFİR', ]
    );
  }




  /*void _GoProduct1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Product1();
    },
    ));
  }*/
}


