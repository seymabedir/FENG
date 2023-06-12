import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/NutritionValuesWidget.dart';

class MilkNV extends StatelessWidget {
  const MilkNV({Key? key}) : super(key: key);

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
      body: _buildNutriValues(),
    );
  }

  _buildNutriValues() {
    return NutritionValuesWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      productName: "SÜT",
      productInfo: "  \n                      100 g    1 Su Bardağı"
                   "\n Karbonhidrat(g)  5.42	       10.84 "
                   "\n Protein (g)	         3.33	        6.66"
                   "\n Yağ (g)	                3.33	        6.66 "
                   "\n Lif (g)	                      0	            0 "
                   "\nKolesterol (mg)	    15	          30 "
                   "\n Sodyum (mg)	      52	         104"
                   "\n Potasyum (mg)	    0	            0",
    );
  }
}



