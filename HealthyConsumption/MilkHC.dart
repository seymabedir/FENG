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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.grey,
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
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
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
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      productName: "ITAMBE SÜT",
      productInfo: "Sütte bulunabilecek patojenler : "
          "\n •	E.coli O157:H7"
          "\n •	Salmonella"
          "\n •	Listeria monocytogenes"
          "\n •	Enterohemorrhagic Escherichia coli (EHEC) "
          "Sütün kaynama derecesi, soğutma işleminin kalitesi, fermantasyon ve saklama süresi ile derecesi gibi koşullar oldukça önemlidir. ",
    condition: "Semptom : "
        "\n Mide bulantısı, "
        "\n kusma, "
        "\n mide krampları, "
        "\n ishal, "
        "\n ateş "
        "\n zehirlenme durumunda karşılaşılan en yaygın semptomlardandır.",

    );
  }
}



