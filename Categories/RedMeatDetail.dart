import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class RedMeatDetail extends StatefulWidget {
  const RedMeatDetail({Key? key}) : super(key: key);


  @override
  _RedMeatDetailState createState() => _RedMeatDetailState();
}

class _RedMeatDetailState extends State<RedMeatDetail> {

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
      title: "KIRMIZI ET",
      imageUrl: "https://img.freepik.com/free-photo/sliced-premium-raw-whale-meat-steak-marble-stone-cutting-board-isolated-white-table_346278-523.jpg?w=996&t=st=1686236422~exp=1686237022~hmac=8943e007c3452f69cb0c360a993afaacdfa19ac53693ccb8f48dd36e1e979f6c",
      info: "Sağlıklı bir yaşam için önemli öğelerden biri olan kırmızı etin az tüketilmesi demir ve vitamin eksikliğine bağlı hastalıklara neden oluyor. Kırmızı et yenmesi, bebekler, gelişme çağındaki gençler ve doğurganlık çağındaki kadınlar için önem taşıyor. Yeteri kadar et yiyemeyen kişilerde demir, B6 ve B12 vitamini eksiklikleri gelişebiliyor. Çocukların zihinsel gelişiminde faydalı olduğu belirtilen kırmızı et, ayrıca büyüme üzerinde de etkili oluyor. Aşırı tüketimi zararlı olsa da, kırmızı etin haftalık beslenme düzeninde en az bir kez yer alması gerekiyor. Yağsız olarak, haşlama veya fırında pişirilerek tüketilmesi önerilen kırmızı etin yetersiz alımı sonucu, demir eksikliğine bağlı kansızlık ortaya çıkıyor. Kırmızı ette bol miktarda protein, demir ve çinko bulunuyor. Böylece kansızlığın önlenmesinde etkili oluyor.",
      products: [
        Product(
          title: "SIĞIR",
          imageUrl: "https://img.freepik.com/free-vector/beef-cuts-butcher-shop-poster_1284-47517.jpg?w=740&t=st=1686236516~exp=1686237116~hmac=8189a9109a600b3efabc282bd72b4d8a4b3f4d6e2de0acd28cc1d7c6cbcdeb03",
          route: Constants.ROUTE_RED_MEAT,
        ),
        Product(
          title: "KOYUN",
          imageUrl: "https://img.freepik.com/free-photo/vertical-view-fresh-raw-red-meats-green-garlics-brown-wooden-cutting-board-tomatoes-pepper-nude-color-towel-knife-dark-color-background_179666-47277.jpg?w=360&t=st=1686236928~exp=1686237528~hmac=d159447a9161f26479081c70bc23a171b9df38022943a63decccf018a5f2b621",
          route: Constants.ROUTE_RED_MEAT,
        ),
        Product(
          title: "KEÇİ",
          imageUrl: "https://img.freepik.com/free-photo/raw-lamb-leg-wooden-board-prepared-cooking-salt-tomato-greens-top-view_141793-12469.jpg?w=996&t=st=1686236888~exp=1686237488~hmac=01e3a7ae3000babfe27d0910f444dd05c3bb126ce5da6438483bd2c194eae3c9",
          route: Constants.ROUTE_RED_MEAT,
        ),
        Product(
          title: "KUZU",
          imageUrl: "https://img.freepik.com/free-vector/lamb-cuts-butcher-shop-poster_1284-47538.jpg?w=740&t=st=1686236627~exp=1686237227~hmac=904a2a66e3285292da57a57139a4b83c790987e652c737851b65231769699892",
          route: Constants.ROUTE_RED_MEAT,
        ),


      ],
    );
  }

}

