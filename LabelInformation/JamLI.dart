import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/LabelInfoWidget.dart';

class JamLI extends StatelessWidget {
  const JamLI({Key? key}) : super(key: key);

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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HOME);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
            ],
          ),
        ),
      ),
      body: _buildLabelInfo(),
    );
  }



  _buildLabelInfo() {
    return _Label();
  }

  _Label() {
    return LabelInfoWidget(
      categoryName: "KONSERVE GIDALAR",
      imageUrl: "https://img.freepik.com/free-photo/assortment-berry-jams-top-view_114579-11706.jpg?w=996&t=st=1686238155~exp=1686238755~hmac=a51c2f73a5f592f1952c89f7d80fb7d6bf7a26b516c1933d57f671b8c3e477e8",
      productName: "REÇEL",
      productInfo: "Tam yağlu süt."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',
    );
  }


}



