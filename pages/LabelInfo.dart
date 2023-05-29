import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/CategoryPage.dart';

class LabelInfo extends StatefulWidget {
  const LabelInfo({Key? key}) : super(key: key);

  @override
  _LabelInfoState createState() => _LabelInfoState();
}

class _LabelInfoState extends State<LabelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Etiket Bilgileri'),
        centerTitle: true,
      ),
      body: Column(
        children: [
        SizedBox(
        height: 15,
        ),
        Center(
        child: Text(
          'KATEGORİ : SÜT VE SÜT ÜRÜNLERİ',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
           ),
         ),
       ),
         SizedBox(
        height: 15,
        ),
      ClipOval(
        child: Container(
          alignment: Alignment.topCenter,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3.0,
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
        height: 5,
      ),
          Center(
            child: Text(
              'ITAMBE SÜT',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'ETİKET BİLGİLERİ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              color: Colors.white,
              child: Text(
                '* Tam yağlu süt. '
                    '\n * LAKTOZ İÇERİR.'
                ' \n * Glüten içermez '
                    '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
                    '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
                    '\n * Geçerlilik : 90 Gün',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.5,
                ),
              ),
            ),
          ),
      ],
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
    );
  }

  void _GoHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HomePage(title: '');
    },));
  }

  void _GoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SearchPage();
    },));
  }

  void _GoFavItems(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavoriteItemPage();
    },));
  }

  void _GoCategories(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return CategoryPage();
    },));
  }
}



