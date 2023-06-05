import 'package:flutter/material.dart';
import 'package:project/repository/CategoryRepository.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryList.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  //final CategoryRepository categoryRepository;
 // const CategoryPage(this.categoryRepository, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 235, 254, 10),
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
          color: Color.fromRGBO(200, 235, 254, 10),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined,
                  //color: Colors.black,
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
      body: _buildCategoryPage(),
    );
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



