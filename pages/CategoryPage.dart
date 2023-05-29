import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/widgets/CategoryList.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        title: const Text('KATEGORİLER'),
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
          color: Colors.lightBlueAccent,
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {
                  _GoHome(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  _GoSearch(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  _GoFavItems(context);
                },
              ),
              IconButton(
                icon: Icon(Icons.dataset_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
      body: _buildCategoryPage(),
    );
  }

  void _GoHome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return HomePage(title: '');
    },));
  }

  void _GoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return SearchPage();
    },));
  }

  void _GoFavItems(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return FavoriteItemPage();
    },));
  }


  _buildCategoryPage() {
    return Container(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,index){
            if (index == 0) {
              return SizedBox(height: 5.0 , width: 10.0,);
            } else if (index == 4) {
              return SizedBox(height: 5.0 , width: 10.0,);
            } else {
              return _buildCategoryList();
    }
    },
      ),
    );
  }

  _buildCategoryList() {
    return CategoryList(
        title: "SÜT VE SÜT ÜRÜNLERİ",
        imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
    );
  }
}



