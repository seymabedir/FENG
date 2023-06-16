import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class PickleHC extends StatelessWidget {
  const PickleHC({Key? key}) : super(key: key);

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
      categoryName: "KONSERVE GIDALAR",
      imageUrl:
          "https://img.freepik.com/free-photo/pickled-vegetables-arrangement_23-2148606760.jpg?w=360&t=st=1686238126~exp=1686238726~hmac=a6d45d01ace1388af22430de4a34134e0940cb643d9de7847d9b3878b8f73a58",
      productName: "TURŞU",
      productInfo: "Konserve gıdalarda bulunabilecek patojenler:"
          "\n • Clostridium Botulinum "
          "\n •	Clostridium botulinum"
          "\n Korunma yolları: "
          "\n Düşük asitli yiyecekler daha riskli ürün grupları arasındadır. Kuşkonmaz, yeşil fasulye, yağda sarımsak, mısır, çorbalar, olgun zeytinler, ton balığı, sosis, öğle yemeği etleri, fermente etler, salata sosları örnek olarak verilebilir. Asitliği düşük olan besinler konserve yapılırken asitliği artırmak için limon suyu veya sirke kullanılabilir. Konserveler tüketilirken kavanozun kapağında bombeleşme/sızıntı varsa ve içerisinde hava kabarcıkları mevcutsa ürün tüketilmemelidir. Konserveler açıldığı gün ya da açıldıktan sonra 1-2 gün içerisinde tüketilmelidir.",
      condition: "Semptom: "
          "\n Genel belirtiler çift görme, bulanık görme, ağız kuruluğu, yutkunma ve konuşma güçlüğü, düşük tansiyon, kalp atış hızında azalma, nefes almada güçlük, diğer kaslarda güçsüzlük, ağrılı şişlik, deri renginde beklenmedik değişiklikler, terleme sorunları, karın ağrısı, mide bulantısı, kusma ve kabızlıktır. Erken teşhis ve müdahale çok önemlidir. Şiddetli vakalarda akciğer solunum kaslarını felç eden ve solunum durması ile sonuçlanan ölümcül bir hastalıktır."
          "\n Evde konserve yapımında dikkat edilmesi gerekenler:  "
          "\n Konserve yapılacak ürünün zarar görmemiş taze ürün olmasına dikkat edilmelidir. Hazırlamaya başlamadan önce alanın ve malzemelerin temizliği sağlanmalıdır. Kavanoz ve kapakları yıkanmalıdır. Cam kavanozlar kullanımdan önce 15-20 dakika kaynatılarak kullanıma hazır hale getirilmelidir. Kavanozlar birkaç kez kullanılabilir ancak kapaklar tek kullanımlık olmalıdır. Kişisel hijyeni sağlamak da oldukça önemlidir. Elinde yara olan kimse konserve hazırlamamalı ya da eldiven kullanmalıdır. "
          "\n Konservenin yeterince kaynatıldığından emin olunmalıdır. Bunun için termometre kullanılmalı ve gerekli koşullar sağlanmalıdır. Minimum 120 °C`de 10-15 dakika ısıl işlem uygulanmalıdır. Bu şartları sağlamak ev ortamında zordur ancak düdüklü tencere ile bu koşullar sağlanabilir. Ancak mümkünse yapılmaması önerilmektedir. "
          "\n Kavanoz kapakları daha önce kullanılmamış olmalıdır. Kapaktaki contanın zarar görmemiş olması önemlidir. Kavanozlara ürün sıcakken doldurulmalıdır. Contanın aktive olması ve ayrıca kapakta bulunan mikroorganizmaların yok olması için konserveler sıcak doldurulduktan sonra ters çevrilmelidir. "
          "\n Konserveler olabildiğince hızlı bir şekilde soğutulmalı, soğuduktan sonra karanlık ve serin bir ortamda saklanmalıdır. "
          "\n Konserve, tüketilmeden önce gözle kontrol edilmeli, kapağında şişme, sızıntı varsa ayrıca ürün içerisinde hava kabarcıkları oluşmuşsa, kapağı açıldığında normal olmayan kötü bir koku hissedilirse kesin olarak tüketilmemelidir.",
    );
  }
}



