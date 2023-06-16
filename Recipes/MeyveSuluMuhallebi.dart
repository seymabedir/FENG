import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class MeyveSuluMuhallebi extends StatefulWidget {
  const MeyveSuluMuhallebi({Key? key}) : super(key: key);

  @override
  _MeyveSuluMuhallebiState createState() => _MeyveSuluMuhallebiState();
}

class _MeyveSuluMuhallebiState extends State<MeyveSuluMuhallebi> {
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
                        "https://i.ytimg.com/vi/26XAKqXrbU4/maxresdefault.jpg"),
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
                      " \n Tarifin Adı : Meyve Sulu Muhallebi",
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
                        "\n Süt - 1 litre "
                        "\n Toz Şeker - 1 su bardağı"
                        "\n Tereyağı - 1 yemek kaşığı "
                        "\n Un - 1 su bardağı "
                        "\n Vanilin - 1 paket"
                        "\n Kakaolu bisküvi - 1 paket"
                        "\n Üzeri için : "
                        "\n •	 Karışık meyve suyu - 3 su bardağı "
                        "\n •	 Mısır nişastası - 3 çorba kaşığı "
                        "\n •	 Toz şeker - 3 çorba kaşığı  ",
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
                          " \n Süt ve şeker tencereye koyulur. Ocakta şeker eriyene kadar karıştırılır. Tereyağı ve un eklenir. Muhallebi kıvamına gelene kadar karıştırarak pişirilir. En son vanilya da eklenir ve karıştırılır. Cam bir fırın kabının içi su ile ıslatılır ve muhallebi dökülür. Üzerine kakaolu bisküviyi dizilir. Diğer taraftan meyve suyu, nişasta ve şeker bir tencereye alınarak orta ateşte koyu bir kıvam alana kadar karıştırılır. Bisküvilerin üzerine dökülür ve buzdolabında 2 saat kadar dinlendirilir. Afiyet olsun.",
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
