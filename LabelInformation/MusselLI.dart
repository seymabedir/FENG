import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/LabelInfoWidget.dart';

class MusselLI extends StatelessWidget {
  const MusselLI({Key? key}) : super(key: key);

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
      categoryName: "DENİZ ÜRÜNLERİ",
      imageUrl: "https://img.freepik.com/free-photo/top-view-delicious-seafood-composition_23-2148926778.jpg?w=740&t=st=1686237421~exp=1686238021~hmac=c5abdd4593e25a3ddbaebe29fef0680cd9b208f8febe5ea5bd4339c94cc7b62d",
      productName: "MİDYE",
      productInfo: "Tam yağlu süt."
          '\n * LAKTOZ İÇERİR.'
          ' \n * Glüten içermez '
          '\n * Açıldıktan sonra 2 gün içinde tüketilmeli.'
          '\n * 1C ile 10C arasında buzdolabında saklanmalı.'
          '\n * Geçerlilik : 90 Gün"',
    );
  }


}



