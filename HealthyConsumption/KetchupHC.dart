import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class KetchupHC extends StatelessWidget {
  const KetchupHC({Key? key}) : super(key: key);

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
      categoryName: "HAZIR/PAKETLİ GIDALAR",
      imageUrl:
          "https://img.freepik.com/free-photo/ketchup-tomato-sauce-with-fresh-tomato_1150-38249.jpg?w=900&t=st=1686229802~exp=1686230402~hmac=b3169fd2f446327a078efe74079de31fbcd89206a5ac8d5833f2dc952e68a7a0",
      productName: "KETÇAP",
      productInfo: "\n Ketçapta bulunabilecek patojenler: "
          "\n •	Staphylococcus aureus "
          "\n •	Bacillus cereus "
          "\n •	Salmonella"
          "\n •	Clostridium botulinum "
          "\n •	Shigella"
          "\n Korunma yolları : "
          "\n Ketçap, içeriği ve düşük pH’a sahip olması nedeniyle az riske sahiptir. Uzun raf ömrüne sahiptir. Açıldıktan sonra oda sıcaklığında 1 ay, buzdolabında 8-12 ay içinde tüketilebilir. Açılmamış olan paketler oda sıcaklığında 1 yıl dayanabilmektedir. Kuru yerde saklanmalıdır. Saklanan ortamda hava akışı olması önerilmemektedir ",
      condition:
          "\n Semptomlar : Zehirlenme durumlarında baş ağrısı, karın ağrısı ve mide bulantısı görülebilmektedir. "
          "\n Evde ketçap yapımında dikkat edilmesi gerekenler; "
          "Domatesler toplanır, yıkanır, doğranır, su ısıtıcılarında önceden pişirilir, hamur haline getirilir ve süzülür, kaynama noktasına kadar ısıtılır. Malzemeler ilave edilir ve tekrar 30-45 dakika pişirilir, liflerinden ayrılır, havası alınır, 70°C'nin üzerindeki sıcak kaplara doldurulur, bozulmaması için hızla soğutulur ve depolanır. Ketçabın ilk mikroflorası büyük ölçüde kullanılan ham maddelere bağlıdır; bu nedenle domatesler iyice yıkanmalıdır. Şişelere sıcak doldurma genellikle ham maddelerden veya üretim sürecinden kaynaklanan kontaminasyonu ortadan kaldırır, böylece ketçap bitkisel bozulmaya neden olan organizmalardan arındırılır.",
    );
  }
}



