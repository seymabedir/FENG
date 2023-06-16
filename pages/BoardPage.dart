import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/BoardWidget.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text('DOLAP'),
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
      body: _buildBoard(),
    );
  }

  _buildBoard() {
    return Container(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
          if (index == 0) {
            return SizedBox(height: 15.0 , width: 10.0,);
          } else if (index == 2) {
            return Column(
              children: [
                SizedBox(height: 5.0 , width: 10.0,),
                _buildEnterItem(context),
              ],
            );
          } else {
            return _buildShelf();
          }
        },
      ),
    );
  }

  _buildShelf() {
    return BoardWidget(
      imageUrl: 'https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg',
      expiryDate: DateTime(2023, 10, 06),
      openDate: DateTime(2023, 06, 06),
      consumeDays: 3,
    );
  }

  _buildEnterItem(BuildContext context) {
    return Container(
      child :
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(Constants.ROUTE_ENTER_ITEM);
          },
            child: Container(
              width: 75,
              height: 50,
              child: Center(
                child: Text('+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 25.0,),
                ),
              ),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
        ),
    );
  }

}


