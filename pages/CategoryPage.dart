import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryList.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

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
                icon: Icon(
                  Icons.home_outlined,
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
                icon: Icon(
                  Icons.dataset_outlined,
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

  Widget _buildCategoryPage() {
    List<Category> categories = [
      Category(
        title: "Category 1",
        imageUrl: "https://example.com/category1.jpg",
        info: "Info 1",
      ),
      Category(
        title: "Category 2",
        imageUrl: "https://example.com/category2.jpg",
        info: "Info 2",
      ),
      Category(
        title: "Category 3",
        imageUrl: "https://example.com/category3.jpg",
        info: "Info 3",
      ),
    ];

    List<Widget> rows = [];
    for (int i = 0; i < categories.length; i += 2) {
      if (i + 1 < categories.length) {
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildCategoryList(categories[i]),
            _buildCategoryList(categories[i + 1]),
          ],
        ));
      } else {
        rows.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildCategoryList(categories[i])],
        ));
      }
    }

    return ListView(
      children: rows,
    );
  }

  _buildCategoryList(Category category) {
      return CategoryList(
        categories: [category],
      );
    }
  }
