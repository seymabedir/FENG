import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class FavoriteItemPage extends StatefulWidget {
  const FavoriteItemPage({Key? key}) : super(key: key);

  @override
  _FavoriteItemPageState createState() => _FavoriteItemPageState();
}

class _FavoriteItemPageState extends State<FavoriteItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
          title: const Text(
              'FAVORİ ÜRÜNLER',
          ),
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
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              SizedBox(
                width: 8,
              ),
              IconButton(
                icon: const Icon(
                  Icons.dataset_outlined,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                ClipOval(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Constants.ROUTE_MILK);
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 7.5,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: NetworkImage("https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg"),
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ),
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
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 7.5,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: TextButton(
                        child: Text('+',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.lightBlueAccent,),
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

      ),

    );
  }

}



