import 'package:flutter/material.dart';

class CategoryDetailWidget extends StatelessWidget {
  String title;
  String imageUrl;
  String info;
  List<Product> products;

  CategoryDetailWidget({
    required this.title,
    required this.imageUrl,
    required this.info,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> productRows = [];
    for (int i = 0; i < products.length; i += 3) {
      int endIndex = i + 3;
      if (endIndex > products.length) {
        endIndex = products.length;
      }

      List<Product> rowProducts = products.sublist(i, endIndex);

      productRows.add(
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rowProducts.map((product) {
                return _buildCategoryProduct(context, product);
              }).toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      );

    }
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        _buildCategoryTitle(),
        SizedBox(
          height: 10.0,
        ),
        _buildCategoryImage(),
        SizedBox(
          height: 15.0,
        ),
        _buildCategoryInfo(),
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: productRows,
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _buildCategoryTitle() {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          this.title,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryImage() {
    return Container(
      alignment: Alignment.topCenter,
      width: 200,
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(this.imageUrl),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          width: 5.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildCategoryInfo() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(224, 247, 250, 70),
        border: Border.all(
          width: 5.0,
          color: Colors.white54,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 300,
      height: 200,
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Text(
          this.info,
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryProduct(BuildContext context, Product product) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(product.route);
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        width: 90,
        height: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.withOpacity(0.5),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 5.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  String title;
  String imageUrl;
  String route;

  Product({
    required this.title,
    required this.imageUrl,
    required this.route,
  });
}
