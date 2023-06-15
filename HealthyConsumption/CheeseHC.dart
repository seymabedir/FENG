import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/HealthyConsumptionWidget.dart';

class CheeseHC extends StatelessWidget {
  const CheeseHC({Key? key}) : super(key: key);

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
      body: _buildHealthyConsumption(),
    );
  }


  _buildHealthyConsumption() {
    return HealthyConsumptionWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/delicious-pieces-cheese_144627-43352.jpg?w=900&t=st=1686232003~exp=1686232603~hmac=6207bbbd55a01f77855c857b0d440e233ced14f7f653b412bb856c5ac90e1dc6",
      productName: "PEYNİR",
      productInfo: "•	Staphylococcus spp."
          "•	Salmonella "
          "•	Enteropathogenic E. Coli "
          "•	Brucella "
          "•	Yersinia enterocolitica "
          "•	Campylobacter "
          "•	Listeria monocytogenes "
          "\n Korunma yolları "
          "\n Peynir, +4 ila +10 derecede yani buzdolabı soğukluğunda ağzı kapalı bir şekilde saklanmalıdır.Eğer ambalajından çıkarıldıysa cam, metal veya seramik bir kap saklamak için uygundur.Salamura peynirler ise salamura suyu içinde saklanmalıdır. Böylece havayla teması azalacak ve bozulma süresi uzayacaktır.",
      condition: "\n Semptom : "
          "\n Ateş, ağrı, titreme ve ishal zehirlenme durumunda karşılaşılan en yaygın semptomlardandır."
          "\n Peynir tüketiminde dikkat edimesi gerekenler; "
          "\n Açıkta satılan peynirler zararlı mikroorganizmaları içinde barındırmaya, çevreden kapmaya elverişli olduğu için tercih edilmemelidir. Sofraya konulmuş olan peynirler arttıysa, eski kabı içerisine koyulmamalı farklı bir kapta saklanmalıdır.",

    );
  }
}



