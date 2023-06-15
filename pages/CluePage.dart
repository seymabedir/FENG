import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ClueList.dart';

class CluePage extends StatefulWidget {
  const CluePage({Key? key}) : super(key: key);

  @override
  _CluePageState createState() => _CluePageState();
}

class _CluePageState extends State<CluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text('İPUÇLARI'),
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
      body: _buildCluePage(),
    );
  }

  Widget _buildCluePage() {
    final clues = [
      ClueList(
        info: "\n Tarım ilaçlarını temizlemek için sebze "
            "\n ve meyveleri yıkarken sirkeli su yerine "
            "\n karbonat kullanılması gerekmektedir. "
            "\n Sirkeli su ilaçları daha dayanıklı hale "
            "\n getirir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 1,
      ),
      ClueList(
        info: "\n Suda çözünen hazır kahveler daha az kafein, "
            "\n daha çok katkı maddesi içermektedir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 2,
      ),
      ClueList(
        info: "\n Donmuş ürünler ılık veya soğuk suda, "
            "\n ısıtıcının üzerinde veya yakınında, düşük "
            "\n ısıda veya doğrudan güneş ışığı altında "
            "\n çözdürülmemelidir. Buzdolabının iç raflarında, "
            "\n diğer yiyeceklere bulaşmasını önlemek için "
            "\n bir kabın içerisinde çözdürülmelidir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 3,
      ),
      ClueList(
        info: "\n Gıda etiketlerinde katkı maddeleri açıkça yazmamaktadır. Her bir grup için farklı bir kodlandırma mevcuttur. Örneğin; gıda boyaları ve renklendiriciler E 1xx, koruyucular E 2xx, antioksidanlar ve asit düzenleyiciler E 3xx kodlarıyla gösterilmektedir. Bunun gibi birkaç kod daha mevcuttur. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 4,
      ),
      ClueList(
        info: "\n Monosodyum glutamat (MSG), yaygın adıyla Çin Tuzu, cips, hazır çorba, et bulyon, tavuk bulyon, pizza sosu, çeşni ve çiğ köfte gibi paketli gıdalarda en yaygın kullanılan lezzet arttırıcılardan biridir ve oldukça zararlıdır. Fazla tüketildiğinde böbreklere, retinaya ve sinir sistemine zarar verir. Ayrıca, öğrenme ve hafıza mekanizmalarında anormalliklere yol açar, ileri yaşlarda obezite, kısırlık, epilepsi, parkinson, alzheimer gibi önemli hastalıklara yol açabilir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 5,
      ),
      ClueList(
        info: "\n Alerjen gıdalar sağlık açısından sorun teşkil etmektedir. Türk Gıda Kodeksi tarafından belirlenmiş olan 14 esas alerjen vardır. Bunları bilmek önemlidir ve hazır gıdaları tüketirken dikkat etmekte fayda vardır. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 6,
      ),
      ClueList(
        info: "\n Pestisit kısaca, haşaratları (pest) öldürmek için kullanılan bir maddelerdir. Tarım ürünlerinde sıklıkla kullanılmaktadır. Pestisit kalıntısını temizlemek önemlidir. Pestisit gıda ürünlerinin kalite/aroma özellikleri üzerinde olumsuz etkileri olabilmekte ve fazla miktarda tüketimi akut veya kronik zehirlenmelere yol açabilmektedir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 7,
      ),
      ClueList(
        info: "\n Meyve ve sebzeleri bütün olarak tüketmek, posa tüketimini artıracağı için sularını sıkıp içmekten daha sağlıklıdır. Kabukları mümkün olduğunca soyulmamalıdır çünkü vitamin ve mineraller, çoğunlukla dış yapraklarda, kabukta ve kabuğun alt tabakasında bulunmaktadır. İç kısımda bu besin değerleri daha az yoğunluktadır.",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 8,
      ),
      ClueList(
        info: "\n Patateslerin çimlenmesi solanin maddesinin artmasına sebep olur. Patatesin çimlenmesi önlenmelidir ve çimlenmiş patatesler tüketilmemelidir. Solanin maddesi sindirim siteminde bozukluklara ve halsizliğe yol açmaktadır. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 9,
      ),
      ClueList(
        info: "\n Konserve kapaklarının yukarı dönük olması hava yaptığının göstergesidir. Bu konserveler, zehirlenmeye yol açabileceği için tüketilmemelidir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 10,
      ),
      ClueList(
        info: "\n Meyve ve sebzeler kesildikten sonra zaman geçtikçe besin değerlerini kaybetmektedir. Bu sebeple kesildikten sonra olabildiğince kısa sürede tüketilmelidir. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 11,
      ),
    ];

    return ListView.builder(
      itemCount: clues.length,
      itemBuilder: (context, index) {
        return clues[index];
      },
    );
  }
}
