import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class FishHC extends StatelessWidget {
  const FishHC({Key? key}) : super(key: key);

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
      categoryName: "DENİZ ÜRÜNLERİ",
      imageUrl:
          "https://img.freepik.com/free-photo/side-view-fresh-raw-fishes-brown-wooden-cutting-board-dark-mix-colors-table-with-free-space_179666-18208.jpg?w=996&t=st=1686237371~exp=1686237971~hmac=f976878adf6b5a0dc9edc8c483ca03afff24917d2e39438740e3b4b18e8450c8",
      productName: "BALIK",
      productInfo: "Deniz ürünlerinde bulunabilecek patojenler "
          "\n •	Vibrio "
          "\n •	Salmonella "
          "\n •	Listeria "
          "\n •	Shigella "
          "\n •	Staphylococcus "
          "\n •	Clostridium "
          "\n •	Escherichia coli  "
          "\n Korunma yolları: Deniz ürünlerini 4°C'nin altındaki saklamak patojenik bakterilerin büyümesini önlemek için önemlidir. Uygun ve yeterli pişirme bu bakterileri yok edebilmektedir. Hijyen kurallarına dikkat edilmesi de oldukça önemlidir. "
          "\n Çapraz bulaşma; kesme tahtaları, mutfak eşyaları veya eller yardımıyla patojenik bakterilerin bir gıdadan diğerine aktarılmasıdır. Deniz ürünleri işlenirken çapraz bulaşının önlenmesi için çiğ deniz ürünleri ve meyve suları önceden pişirilmiş veya yemeye hazır yemeklerden ayrı tutulmalıdır.",
      condition: "Dikkat edilmesi gerekenler; "
          "\n •	Sık sık elleri, kapları ve pişirme yüzeylerini yıkamak, "
          "\n •	Deniz ürünlerini minimum 63°C’de 15 saniye boyunca pişirmek, "
          "\n •	Çapraz kontaminasyonu önlemek için çiğ ve pişmiş deniz ürünlerini ayrı tutmak ve "
          "\n •	Deniz ürünlerini 4°C'nin altındaki buzdolabında veya -15°C'nin altındaki derin dondurucuda saklamak. "
          "\n Semptomlar : "
          "\n Uyuşma ve karıncalanma, baş ağrısı, karın ağrısı, mide bulantısı, kusma, ishal ve bilinç kaybı zehirlenme durumunda karşılaşılan durumlardandır.",
    );
  }
}



