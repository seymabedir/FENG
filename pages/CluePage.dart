import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/ClueList.dart';

class CluePage extends StatefulWidget {
  const CluePage({Key? key}) : super(key: key);

  @override
  _CluePageState createState() => _CluePageState();

}

class _CluePageState extends State<CluePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        title: const Text('İPUÇLARI'),
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
      body: _buildCluePage(),
    );
  }

  _buildCluePage() {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index){
          if (index == 0) {
            return SizedBox(height: 5.0 , width: 10.0,);
          } else if (index == 9) {
            return SizedBox(height: 5.0 , width: 10.0,);
          } else {
            return _buildClueList();
          }
        },
      ),
    );
  }


  _buildClueList() {
    return ClueList(
        info: "Pişmiş tavuk yemeği "
            "\n ertesi gün ısıtılarak "
            "\n tekrar tüketilebilir.",
        imageUrl: "https://www.alibabasut.com/wp-content/uploads/2021/12/gunluk_taze_inek_sutu.jpg",
        ID: 123,
    );
  }




}



