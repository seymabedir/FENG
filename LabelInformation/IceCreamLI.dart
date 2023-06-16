import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/LabelInfoWidget.dart';

class IceCreamLI extends StatelessWidget {
  const IceCreamLI({Key? key}) : super(key: key);

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
      body: _buildLabelInfo(),
    );
  }



  _buildLabelInfo() {
    return _Label();
  }

  _Label() {
    return LabelInfoWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl:
          "https://img.freepik.com/free-photo/ice-cream_144627-17284.jpg?w=360&t=st=1686232365~exp=1686232965~hmac=bdd71bf1c789afd411ba9e3431d314772af3c09d8e8fdc62aab03f013856f215",
      productName: "DONDURMA",
      productInfo:
          "Fındık Parçalı (%1), Kakao Soslu (%20) & Karamel Soslu (%8), Kakaolu Külahta (%13) Vanilya Aromalı Bitkisel Yağlı Sütlü Buz (%58). İçindekiler: Su şeker, bitkisel yağlar (değişen miktarlarda hindistancevizi, palm), glikoz-fruktoz şurubu, buğday unu (gluten içerir), yağsız süt tozu, peyniraltı suyu tozu (süt ürünü), kakao kitlesi, kakao tozu (%1,1), kavrulmuş fındık parça (%1), tam yağlı süt tozu, süt proteini, kakao yağı, glikoz şurubu, maltodekstrin, süt yağı, karamel şurup (%0.4) [glikoz şurubu, şeker, su, asitlik düzenleyici (sitrik asit)]. emülgatörler (yağ asitlerinin mono ve digliseridleri, amonyum fosfatid, ayçiçek lesitini, poligliserol polirisinoleat), kıvam arttırıcılar (keçiboynuzu gamı, guar gam, selüloz gam, karragenan), tuz, aroma vericiler, nem verici (gliserol). renklendiriciler (amonyak karamel, anatto). İz miktarda diğer fındık, fıstık, ceviz, badem çeşitleri, soya lesitini, susam yağı ve yumurta içerebilir. Türk Gida Kodeksi Yenilebilir Buzlu Ürünler Tebliğine uygun olarak üretilmiştir.",
    );
  }


}



