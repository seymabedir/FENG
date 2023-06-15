import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ReferencesWidget.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  _ReferencesState createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text('REFERANSLAR'),
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
      body: _buildReferencePage(),
    );
  }

  Widget _buildReferencePage() {
    final references = [
      ReferencesWidget(
        info: "\n https://gelisim.edu.tr/tr/gelisim-haber-uzmanindan-uyari-sebze-ve-meyveleri-sirkeli-suda-bekletmek-mikroplari-oldurmek-icin-yeterli-degil#:~:text=EN%20DO%C4%9ERU%20TEM%C4%B0ZLEME%20%C5%9EEKL%C4%B0%3A%20KARBONATLI,kal%C4%B1nt%C4%B1n%C4%B1n%20temizlenmesine%20yard%C4%B1mc%C4%B1%20oldu%C4%9Fu%20kan%C4%B1tland%C4%B1. ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 1,
      ),
      ReferencesWidget(
        info: "\n https://pubmed.ncbi.nlm.nih.gov/24325083/",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 2,
      ),
      ReferencesWidget(
        info: "\n https://tip.baskent.edu.tr/kw/upload/464/dosyalar/cg/sempozyum/ogrsmpzsnm13/13.P3.pdf ",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 3,
      ),
      ReferencesWidget(
        info: "\n https://dokam.itu.edu.tr/bunlari-biliyor-musunuz/",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 4,
      ),
      ReferencesWidget(
        info: "\n https://acikbilim.yok.gov.tr/handle/20.500.12812/328481",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 5,
      ),
      ReferencesWidget(
        info: "\n https://gidalab.tarimorman.gov.tr/sanliurfa/sayfalar/detay.aspx?ogeid=14&liste=slogan",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 6,
      ),
      ReferencesWidget(
        info: "\n https://www.tarimorman.gov.tr/Konu/2023/Toplu_Tuketim_Yerlerinde_Alerjen_Bildirimi",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 7,
      ),
      ReferencesWidget(
        info: "\n https://akademik.adu.edu.tr/aum/sesam/default.asp?idx=323131",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 8,
      ),
      ReferencesWidget(
        info: "\n https://gidalab.tarimorman.gov.tr/gidareferans/Belgeler/B%C3%B6l%C3%BCmler/Pestisit-Egitim-Notu2015.pdf",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 9,
      ),ReferencesWidget(
        info: "\n https://corumism.saglik.gov.tr/TR-37565/taze-sebze-ve-meyve-tuketilirken-nelere-dikkat-edilmelidir.html",
        imageUrl: "https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1108.jpg?w=996&t=st=1686259739~exp=1686260339~hmac=2cfd5ba198aa1788dbed871d58e33a5f4a9022a0936327b35e7cee69dfbe2098",
        ID: 10,
      ),



    ];

    return ListView.builder(
      itemCount: references.length,
      itemBuilder: (context, index) {
        return references[index];
      },
    );
  }
}
