import 'package:flutter/material.dart';

class LabelInfoWidget extends StatelessWidget {
  String categoryName;
  String imageUrl;
  String productName;
  String productInfo;

  LabelInfoWidget({
    required this.categoryName,
    required this.imageUrl,
    required this.productName,
    required this.productInfo,
  }
  );


  @override
  Widget build(BuildContext context) {
    return _buildLabelPage(context);
  }

  _buildLabelPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
            height: 5,
        ),
        _buildCategoryName(context),
        _buildProductImage(context),
        _buildProductName(context),
        SizedBox(
          height: 5,
        ),
         Center(
           child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white60,
              ),
              child: Text(
                'ETİKET BİLGİLERİ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,),
              ),
            ),
         ),
        SizedBox(
          height: 5,
        ),
        _buildLabelInfo(context),
      ],
    );
  }


  _buildCategoryName(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.categoryName,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

  _buildProductImage(BuildContext context) {
    return ClipOval(
      child: Container(
        alignment: Alignment.topCenter,
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: Color.fromRGBO(13, 71, 161, 10),
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: NetworkImage(this.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildProductName(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.productName,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  _buildLabelInfo(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: 350,
          height: 300,
          decoration: BoxDecoration(
          border: Border.all(
          width: 3.0,
          color: Color.fromRGBO(13, 71, 161, 10),
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          ),
          child: Text(
            this.productInfo,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
