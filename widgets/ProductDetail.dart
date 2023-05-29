import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class ProductDetail extends StatefulWidget {
  String categoryName;
  String productName;
  String imageUrl;
  String avgRate;
  //bool isFav;
  //bool isReported;

  ProductDetail(
  {required this.categoryName,
    required this.productName,
    required this.imageUrl,
    required this.avgRate,
    //this.isFav,
    //this.isReported,
  }
);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFav = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        _buildCategoryTitle(context),
        _buildProductTitle(context),
        _buildProductImage(context),
        _buildEvaluation(context),
        _buildButtons(context),
      ],
    );
  }

  _buildCategoryTitle(BuildContext context) {
    return Center(
      child: Text(
        this.widget.categoryName,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  _buildProductTitle(BuildContext context) {
    return Center(
      child: Text(
        this.widget.productName,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  _buildProductImage(BuildContext context) {
    return ClipOval(
      child: Container(
        child: Image.network(this.widget.imageUrl),
        alignment: Alignment.topCenter,
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            width: 5.0,
            color: Colors.blue.shade50,
          ),
          borderRadius: BorderRadius.circular(100),
          color: Colors.blue.withOpacity(0.5),
        ),
      ),
    );
  }

  _buildEvaluation(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 40,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Row(  //yıldızlar
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      onPressed: () {
                        //_GoCategories(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      onPressed: () {
                        //_GoCategories(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      onPressed: () {
                        //_GoCategories(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_border_outlined,
                        //color: Colors.yellow,
                      ),
                      onPressed: () {
                        //_GoCategories(context);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_border_outlined,
                        //color: Colors.yellow,
                      ),
                      onPressed: () {
                        //_GoCategories(context);
                      },
                    ),
                  ),
                ),
              ]),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              this.widget.avgRate,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          //height: 85,
          width: 175,
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 40,
              //height: 40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  isFav ? Icons.favorite_border_outlined : Icons.favorite,
                  color: isFav ? Colors.black : Colors.red,
                ),
                onPressed: toggleIcon,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: 40,
              //height: 40,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.edit_square,
                  color: Colors.black,
                ),
                onPressed: () {
                  //_GoReport(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildButtons(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 7.5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_LABEL);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('images/yemek.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Etiket \n Bilgileri'),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_NVALUES);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('images/yemek.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Besin \n Değerleri'),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_HEALTHYC);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('images/yemek.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Sağlıklı \n Tüketim'),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_RECIPEREC);
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.lightBlueAccent.shade100,
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('images/yemek.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('Önerilen \n Tarifler'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void toggleIcon() {
    setState(() {
      isFav = !isFav;
    });
  }
}