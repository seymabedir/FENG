import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class Pudding extends StatefulWidget {
  const Pudding({Key? key}) : super(key: key);

  @override
  _PuddingState createState() => _PuddingState();
}

class _PuddingState extends State<Pudding> {

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
                    image: NetworkImage("https://img.freepik.com/free-photo/high-angle-banana-chocolate-pudding_23-2148750299.jpg?w=826&t=st=1686268281~exp=1686268881~hmac=ea3795f799bc54aa671229fd9371eb841c432a2cc3d50962d4fb4d3874909b40"),
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
                    child: Text(" \n Tarifin Adı : Puding",
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
                          "\n 1 su bardağı toz şeker"
                          "\n 3 yemek kaşığı kakao "
                          "\n 2 dolu yemek kaşığı un "
                          "\n 2 dolu yemek kaşığı nişasta "
                          "\n 1 paket vanilya "
                          "\n 1 yemek kaşığı tereyağı",
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
                        child: Text(" \n Uygun bir tencereye, vanilya ve tereyağı hariç puding için gerekli olan diğer malzemeleri alalım. "
                            "\n Orta ateşte, bir çırpma teli yardımıyla devamlı karıştırarak pişirmeye başlayalım. "
                            "\n Kıvam alıp, göz göz olmaya başlayınca birkaç dakika daha karıştırarak pişirelim. "
                            "\n Ateşten aldığımız pudingin içine vanilya ve tereyağı ilavesini yaparak, mikserle bir kaç dakika çırpalım. Burada tel çırpıcı da kullanabilirsiniz ancak mikser ile kıvamı daha güzel olacaktır. "
                            "\n Hazır olan pudingi kepçe yardımı ile kaselere aktaralım. Ben kullandığım kaseler ile 4 kase elde ettim. "
                            "\n Oda sıcaklığına gelen pudingimizi buzdolabına kaldırarak bir kaç saat dinlenmeye bırakalım. "
                            "\n Güzelce dinlenen ve soğuyan pudinglerimizi dilediğimiz gibi süsleyerek servis edelim. Afiyet olsun.",
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

