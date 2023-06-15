import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class HamsiliPilav extends StatefulWidget {
  const HamsiliPilav({Key? key}) : super(key: key);

  @override
  _HamsiliPilavState createState() => _HamsiliPilavState();
}

class _HamsiliPilavState extends State<HamsiliPilav> {

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
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.dataset_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
              SizedBox(width: 8,),
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
                    image: NetworkImage("https://cdn.yemek.com/mnresize/1250/833/uploads/2022/12/hamsili-pilav-yemekcom.jpg"),
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
                    child: Text(" \n Tarifin Adı : Hamsili Pilav",
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
                          "\n 1,5 kilo hamsi"
                          "\n 3 adet soğan (rendelenmiş)"
                          "\n 2 yemek kaşığı dolmalık fıstık "
                          "\n 2 yemek kaşığı kuş üzümü "
                          "\n 1,5 su bardağı pirinç"
                          "\n 1 tatlı kaşığı yenibahar "
                          "\n 1 tatlı kaşığı karabiber"
                          "\n Tuz"
                          "\n Maydanoz"
                          "\n 2 su bardağı sıcak su (pilav için)"
                          "\n Tereyağı"
                          "\n Sıvı yağ",
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
                        child: Text(" \n Hamsiler güzelce ayıklanır ve kılçıkları temizlenip yıkanır. Ayıklanan hamsiler en az 20 dakika suda bekletilir ve tuz, limon suyu eklenir. Bu sayede hamsi kokusu pilava sinmez. Kuş üzümleri bir kaseye alınıp ılık suda bekletilir. Pirinçler yıkanıp sıcak suda tuz eklenip bekletilir. Tencereye tereyağı ve sıvı yağ koyulur. Soğanlar eklenip kavrulur. Fıstıklar eklenip kavurmaya devam edilir. Kuş üzümlerinin suyu süzülür ve tencereye eklenir. Karabiber, yenibahar, tuz eklenir. Pirinçler eklenip suyu da eklenip kısık ateşte pişirilir. Pişince maydanoz eklenip karıştırılır. Borcam tereyağıyla iyice yağlanır ve hamsiler dizilir. İç harcı eklenip gene hamsi dizilir. Üzerine çok az sıvı yağ dökülür. 180 derece fırında 25 dakika kızarana kadar pişirilir. Afiyet olsun.",
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

