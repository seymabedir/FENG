import 'package:flutter/material.dart';
import 'package:project/services/dynamic_link_service.dart';
import 'package:project/utilities/constants.dart';
import 'package:share_plus/share_plus.dart';

class ProductDetail extends StatefulWidget {
  String categoryName;
  String productName;
  String imageUrl;
  int avgRate;
  //bool isFav;
  //bool isReported;

  ProductDetail({
    required this.categoryName,
    required this.productName,
    required this.imageUrl,
    required this.avgRate,
    //this.isFav,
    //this.isReported,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isFav = true;
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        _buildCategoryTitle(context),
        const SizedBox(
          height: 10,
        ),
        _buildProductTitle(context),
        const SizedBox(
          height: 10,
        ),
        _buildProductImage(context),
        const SizedBox(
          height: 10,
        ),
        _buildEvaluation(context),
        const SizedBox(
          height: 10,
        ),
        _buildButtons(context),
      ],
    );
  }

  _buildCategoryTitle(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.widget.categoryName,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white60,
        ),
        child: Center(
          child: Text(
            this.widget.productName,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
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
            width: 5.0,
            color: const Color.fromRGBO(13, 71, 161, 10),
          ),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: NetworkImage(this.widget.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  _buildEvaluation(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 170,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3.0,
              color: const Color.fromRGBO(13, 71, 161, 80),
            ),
            color: Colors.white30,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Center(
            child: Row(
                //yıldızlar
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon:  Icon(
                          isToggled ? Icons.star : Icons.star_border_outlined,
                          color: isToggled ? Colors.yellow : Colors.black,
                        ),
                        onPressed:toggleIconButton,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          isToggled ? Icons.star : Icons.star_border_outlined,
                          color: isToggled ? Colors.yellow : Colors.black,
                        ),
                          onPressed: toggleIconButton,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon:  Icon(
                          isToggled ? Icons.star : Icons.star_border_outlined,
                          color: isToggled ? Colors.yellow : Colors.black,
                        ),
                          onPressed: toggleIconButton,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon: Icon(
                          isToggled ? Icons.star : Icons.star_border_outlined,
                          color: isToggled ? Colors.yellow : Colors.black,
                        ),
                        onPressed: toggleIconButton,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon:  Icon(
                          isToggled ? Icons.star : Icons.star_border_outlined,
                          color: isToggled ? Colors.yellow : Colors.black,
                        ),
                        onPressed: toggleIconButton,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              '${widget.avgRate}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          //height: 85,
          width: 130,
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 70,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: const Color.fromRGBO(13, 71, 161, 80),
                ),
                color: Colors.white30,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    isFav ? Icons.favorite_border_outlined : Icons.favorite,
                    color: isFav ? Colors.black : Colors.red,
                    size: 25,
                  ),
                  onPressed: toggleIcon,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: 70,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: const Color.fromRGBO(13, 71, 161, 80),
                ),
                color: Colors.white30,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.edit_square,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Constants.ROUTE_REPORT);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              width: 70,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: const Color.fromRGBO(13, 71, 161, 80),
                ),
                color: Colors.white30,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.share,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    DynamicLinksProvider()
                        .createLink("yoghurt_details")
                        .then((value) => Share.share(value));
                  },
                ),
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
        const SizedBox(
          width: 7.5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Constants.ROUTE_PRODUCT_LABEL);
                },
                child: Container(
                  child: Center(
                    child: Stack(
                      children: const [
                        Positioned(
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(0.85),
                            child: Icon(
                              Icons.label_outline_rounded,
                              color: Colors.grey,
                              size: 50,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 1,
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation(0.80),
                            child: Icon(
                              Icons.label_outline_rounded,
                              color: Colors.black54,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: const Color.fromRGBO(13, 71, 161, 80),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Etiket \n Bilgileri',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Constants.ROUTE_PRODUCT_NVALUES);
                },
                child: Container(
                  child: Center(
                    child: Stack(
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.stream_rounded,
                            color: Colors.black12,
                            size: 50,
                          ),
                        ),
                        Positioned(
                          right: 9.5,
                          bottom: 10,
                          child: Icon(
                            Icons.stream_rounded,
                            color: Colors.black54,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: const Color.fromRGBO(13, 71, 161, 80),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Besin \n Değerleri',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Constants.ROUTE_PRODUCT_HEALTHYC);
                },
                child: Container(
                  child: Center(
                    child: Stack(
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.health_and_safety_outlined,
                            color: Colors.black12,
                            size: 50,
                          ),
                        ),
                        Positioned(
                          right: 4.5,
                          bottom: 2,
                          child: Icon(
                            Icons.health_and_safety_outlined,
                            color: Colors.black54,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: const Color.fromRGBO(13, 71, 161, 80),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Sağlıklı \n Tüketim',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
          height: 10,
        ),
        Column(
          children: [
            ClipOval(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(Constants.ROUTE_PRODUCT_RECIPEREC);
                },
                child: Container(
                  child: Center(
                    child: Stack(
                      children: const [
                        Positioned(
                          child: Icon(
                            Icons.food_bank_outlined,
                            color: Colors.black12,
                            size: 50,
                          ),
                        ),
                        Positioned(
                          right: 4,
                          bottom: 1,
                          child: Icon(
                            Icons.food_bank_outlined,
                            color: Colors.black54,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: const Color.fromRGBO(13, 71, 161, 80),
                    ),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Önerilen \n Tarifler',
                  textAlign: TextAlign.center,
                ),
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

  void toggleIconButton() {
    setState(() {
      isToggled = !isToggled;
    });
  }
}
