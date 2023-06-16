import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class MilkHC extends StatelessWidget {
  const MilkHC({Key? key}) : super(key: key);

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
      body: _buildHealthyConsumption(),
    );
  }


  _buildHealthyConsumption() {
    return HealthyConsumptionWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl:
          "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      productName: "ITAMBE SÜT",
      productInfo: "Sütte bulunabilecek patojenler : "
          "\n •	E.coli O157:H7"
          "\n •	Salmonella"
          "\n •	Listeria monocytogenes"
          "\n •	Enterohemorrhagic Escherichia coli (EHEC) "
          "Sütün kaynama derecesi, soğutma işleminin kalitesi, fermantasyon ve saklama süresi ile derecesi gibi koşullar oldukça önemlidir. ",
      condition:
          "Açık sütlerde, mikroorganizmaları yok etmek için gerekli koşullar sağlanamayabileceği için açık süt tüketilmesi önerilmemektedir. Alındığı durumlarda 63°C'de minimum 30 dakika veya 72°C'de minimum 15 saniye kaynatma yapıldığından emin olunmalıdır. Bu koşulları sağlamak önemlidir. Paketli sütlerde, paketlerde şişme varsa bu sütler satın alınmamalı ve tüketilmemelidir. Mide bulantısı, kusma, mide krampları, ishal ve ateş zehirlenme durumunda karşılaşılan en yaygın semptomlardandır.",
    );
  }
}



