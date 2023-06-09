import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class Sutlac extends StatefulWidget {
  const Sutlac({Key? key}) : super(key: key);

  @override
  _SutlacState createState() => _SutlacState();
}

class _SutlacState extends State<Sutlac> {

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
                image: NetworkImage("https://img.freepik.com/free-photo/milk-sweet-wooden-board_140725-4089.jpg?w=826&t=st=1686263487~exp=1686264087~hmac=84c2a03e4faa6cb2cd31f451fe5f7328a1d8d26fd599f0a5b616b31ec35224e5"),
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
                    child: Text(" \n Tarifin Adı : Sütlaç",
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
                      child: Text(" \n Malzemeler : "
                          "\n 1 litre süt "
                          "\n 1 su bardağı şeker "
                          "\n Yarım su bardağı pirinç "
                          "\n 3 yemek kaşığı buğday nişastası "
                          "\n 1 paket vanilya "
                          "\n 2 su bardağı su"
                          "\n Yarım su bardağı süt",
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
                          child: Text(" \n Fırında sütlaç için öncelikle pirinci haşlayalım. "
                              "\n Pirinçleri güzelce yıkadıktan sonra 2 su bardağı su ile "
                              "\n pişene kadar haşlayın. Çok az sulu kalacaktır. "
                              "\n Diğer malzemeleri ekleyelim ve sütlacı pişirelim. "
                              "\n Haşlanan pirinçlerin üzerine sütü, vanilyayı ilave edip kaynatın. "
                              "\n Karışım kaynamaya başlayınca şekeri ve yarım su bardağı sütle "
                              "\n karıştırdığınız 3 yemek kaşığı buğday nişastasını ilave ediniz. "
                              "\n 10-15 dk. daha kaynatıp altını kapatın. Sütlaçları fırına sürelim. "
                              "\n Fırın için uygun ısıya dayanıklı sütlaç kaselerine sütlaçlarınızı "
                              "\n paylaştırın. Tepsinize soğuk su doldurun ve sütlaç kaplarını fırın "
                              "\n tepsinize dizin (Tepsideki su sütlaç kaplarının yarısına kadar gelecek) "
                              "\n Tepsiyi fırınınızın en üst rafına yerleştirin. 180 derecede, sütlaçlarınız "
                              "\n kızarana kadar fırınlayın. Afiyet olsun.",
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

