import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class CategoryList extends StatelessWidget {
  List<Category> categories;


  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: categories.map((category) {
          return Row(
            children: [
              SizedBox(
                width: 5.0,
              ),
              _buildCategoryCard(context, category),
              SizedBox(
                width: 5.0,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, Category category) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(category.route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10,
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 150,
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.5),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(category.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 150,
                          height: 50,
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
                              category.title,
                              style: const TextStyle(
                                fontSize: 13,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  String title;
  String imageUrl;
  String route;

  Category({
    required this.title,
    required this.imageUrl,
    required this.route,
  });
}