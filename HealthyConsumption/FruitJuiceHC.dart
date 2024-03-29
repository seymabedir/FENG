import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class FruitJuiceHC extends StatelessWidget {
  const FruitJuiceHC({Key? key}) : super(key: key);

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
      categoryName: "MEYVE SULARI",
      imageUrl:
          "https://img.freepik.com/free-photo/top-view-colorful-fruit-juices_23-2148227560.jpg?w=996&t=st=1686240897~exp=1686241497~hmac=bbcf8ead4df38a493b0fb96010033ab33c028fedda4a9631ba6705772a09173c",
      productName: "MEYVE SUYU",
      productInfo: "Meyve suyunda bulunabilecek patojenler : "
          "\n •	Esericchia coli "
          "\n •	Salmonella "
          "\n •	Listeria monocytogenes "
          "\n •	Shigella "
          "\n •	Stapyhlococcus"
          "\n Korunma yolları: "
          "\n Meyve suları, zararlı bakterileri öldürmek için pastörize edilir (ısıl işlem görür). İşlenmemiş meyve sularının satın alınmasını önlemek için uyarı etiketlerine dikkat edilmelidir. İşlenmiş ürünleri marketlerin soğutma bölümlerinde bulunabilir. İşlenmemiş meyve suyu alınmamasına dikkat edilmelidir, zehirlenme riski yüksektir. Endüstriyel işlemler dışında, doğal antimikrobiyaller de koruma yöntemlerinden biridir. Benzoik asit, kaprik asit, sitrik asit, laktik asit, malik asit, potasyum sorbat, sodyum benzoat ve sorbik asit kullanılabilecek bazı doğal antimikrobiyal malzemelerdir.",
      condition:
          "\n Semptomlar : Kusma, ishal, karın ağrısı, ateş, baş ağrısı ve vücut ağrısı gibi grip benzeri semptomlar zehirlenme durumunda görülebilmektedir."
          "\n Evde meyve suyu yapımında dikkat edilmesi gerekenler;"
          "\n •	Ellerin iyice yıkandığından emin olunmalıdır. "
          "\n •	Meyve ve sebzelerde hasarlı kısım varsa kesilmelidir. Çürük olduğu düşünülüyorsa kullanılmayıp atılmalıdır. "
          "\n •	Meyve ve sebzeler su altında iyice yıkanarak temizlenmelidir. Soyma işlemi yapılacaksa bile önce güzelce yıkanmalıdır. "
          "\n •	Yıkadıktan sonra, yüzeyde bulunabilecek bakterileri daha da azaltmak için temiz bir bez havlu veya kağıt havlu ile ürün kurulanmalıdır.",
    );
  }
}



