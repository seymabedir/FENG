import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/RecipeRecWidget.dart';

class RecipeRecommendation extends StatelessWidget {
  const RecipeRecommendation({Key? key}) : super(key: key);

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
      body: _buildRecipeRecommendation(),
    );
  }


  _buildRecipeRecommendation() {
    return RecipeRecWidget(
      categoryName: "SÜT VE SÜT ÜRÜNLERİ",
      imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
      productName: "ITAMBE SÜT",
      recipes: "SÜTLAÇ",
      recipeImage: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
    );
  }
}


























      /*body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              'KATEGORİ : SÜT VE SÜT ÜRÜNLERİ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ClipOval(
            child: Container(
              alignment: Alignment.topCenter,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.blue.shade50,
                ),
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue.withOpacity(0.5),
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('images/yemek.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'ITAMBE SÜT',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'ÖNERİLEN TARİFLER',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 75,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade100,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('images/yemek.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.lightBlueAccent.shade200,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: TextButton(
                          child: Text('+',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.grey,),
                          ),
                          onPressed: () {
                            //_addItem();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),*/





