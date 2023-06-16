import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class KizarmisDondurma extends StatefulWidget {
  const KizarmisDondurma({Key? key}) : super(key: key);

  @override
  _KizarmisDondurmaState createState() => _KizarmisDondurmaState();
}

class _KizarmisDondurmaState extends State<KizarmisDondurma> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ClipOval(
              child: Container(
                alignment: Alignment.topCenter,
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.lightBlueAccent.shade200,
                  ),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.yemek.com/mnresize/940/940/uploads/2015/05/kizarmis-dondurma-tarifi.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      " \n Tarifin Adı : Kızarmış Dondurma",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.lightBlueAccent.shade200,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        " \n Malzemeler : "
                        "\n Yarım kg kaymaklı maraş dondurması"
                        "\n 2 yumurta akı"
                        "\n 1 su bardağı mısır gevreği "
                        "\n Yarım su bardağı ince çekilmiş fındık "
                        "\n Yarım su bardağı ince çekilmiş badem"
                        "\n 1 çay bardağı rendelenmiş hindistan cevizi"
                        "\n Yarım çay bardağı esmer şeker "
                        "\n 1 çay kaşığı tarçın "
                        "\n Kızartmak için ayçiçeği yağı ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 175,
                      width: 325,
                      child: SingleChildScrollView(
                        child: Text(
                          " \n Dondurna buzluktan çıkarılıp ılımaya bırakılır. Yumuşayan dondurma büyük parçalar halinde alınır ve yuvarlak şekil verilir. Sonra 30 dakika derin dondurucuya koyulur. Bu sırada bir yumurta beyazı çırpılır. Mısır gevreği, fındık ve badem rondodan çekilir. Hindistan cevizi, esmer şeker ve tarçın eklenerek karıştırılır. Dondurma topları önce yumurtaya ardından toz karışıma bulanır ve tekrar derin dondurucuda yarım saat bekletilir. Daha sonra iyice ısıtılan yağda kızartılarak servis edilir.  Afiyet olsun.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
