import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class DairyDetail extends StatefulWidget {
  const DairyDetail({Key? key}) : super(key: key);


  @override
  _DairyDetailState createState() => _DairyDetailState();
}

class _DairyDetailState extends State<DairyDetail> {

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
          )
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
      body: _buildCategoryDetails(context),
    );
  }

  _buildCategoryDetails(BuildContext context) {
    return _buildCategoryDetailWidget(context);
  }

  _buildCategoryDetailWidget(context) {
    return CategoryDetailWidget(
      title: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl:
          "https://www.dairyindustries.com/wp-content/uploads/thumbnail_Dairy-Products.jpg",
      info:
          "Bu grupta yer alan başlıca besinler süt, yoğurt ve peynirdir.Süt grubu besinler protein, kalsiyum, B2 vitamini (riboflavin) ve B12 vitamini başta olmak üzere birçok besin ögesinin önemli kaynağıdır. Süt grubu besinlerde bulunan kalsiyum diğer besin kaynaklarına göre vücut tarafından daha iyi kullanılır. Kalsiyum kemiklerin ve dişlerin sağlıklı gelişiminde ve hücre çalışmasında önemli rol oynar. Süt ve süt ürünlerinin içerdiği kaliteli protein her yaş grubunda vücudun çalışması; çocukluk döneminde büyüme, yetişkinlikte ise doku onarımının sağlanması için gereklidir. Bu grupta yer alan besinlerde bulunan B vitaminleri, başta kırmızı kan hücreleri ile sinir hücreleri olmak üzere tüm vücutta önemli işlevlere sahiptir. Süt ve süt ürünleri yağ içeriği yönünden de zengindir. Doymuş yağ ve kolesterol ile yağda eriyen A vitamini içerirler.",
      products: [
        Product(
          title: "SÜT",
          imageUrl:
              "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
          route: Constants.ROUTE_MILK,
        ),
        Product(
          title: "YOĞURT",
          imageUrl:
              "https://img.freepik.com/free-photo/greek-yogurt-wooden-bowl-isolated-white-background_123827-22632.jpg?w=996&t=st=1686231965~exp=1686232565~hmac=b4a28162470b78fe69f747bf6de086549ada7de4f2f87b8b3bcd19636b7d64cd",
          route: Constants.ROUTE_YOGHURT,
        ),
        Product(
          title: "PEYNİR",
          imageUrl: "https://img.freepik.com/free-photo/delicious-pieces-cheese_144627-43352.jpg?w=900&t=st=1686232003~exp=1686232603~hmac=6207bbbd55a01f77855c857b0d440e233ced14f7f653b412bb856c5ac90e1dc6",
          route: Constants.ROUTE_CHEESE,
        ),
        Product(
          title: "AYRAN/KEFİR",
          imageUrl: "https://img.freepik.com/free-photo/ayran-drink-with-mint-cucumber-glass-wooden-table_123827-21428.jpg?w=996&t=st=1686232158~exp=1686232758~hmac=dfbd09bf4b19944fd01a4878e8cba36619c0d8a3481c0d692644a6642ddf601d",
          route: Constants.ROUTE_AYRAN,
        ),
        Product(
          title: "TEREYAĞI",
          imageUrl: "https://img.freepik.com/free-photo/top-view-two-slices-rye-dry-bread-as-toast-with-butter-breakfast-with-vintage-knife-it-everything-craft-paper_346278-650.jpg?w=996&t=st=1686232316~exp=1686232916~hmac=c820138b44a5903c0bed58f6a54c19e3f5b8661a92360a4c26d857bb6099033d",
          route: Constants.ROUTE_BUTTER,
        ),
        Product(
          title: "DONDURMA",
          imageUrl: "https://img.freepik.com/free-photo/ice-cream_144627-17284.jpg?w=360&t=st=1686232365~exp=1686232965~hmac=bdd71bf1c789afd411ba9e3431d314772af3c09d8e8fdc62aab03f013856f215",
          route: Constants.ROUTE_ICECREAM,
        ),

      ],
    );
  }

}

