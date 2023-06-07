import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({Key? key}) : super(key: key);


  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {

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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  color: Colors.black,
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
                icon: Icon(Icons.dataset_outlined,
                color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
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
      title: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      info: "xxxxxxxxxxxxxxxxxxxxx",
      products: [
        Product(
          title: "SÜT",
          imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
        ),
        Product(
          title: "YOĞURT",
          imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
        ),
        Product(
          title: "PEYNİR",
          imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
        ),
      ],
    );
  }

}


