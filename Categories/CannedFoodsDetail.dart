import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';

class CannedFoodsDetail extends StatefulWidget {
  const CannedFoodsDetail({Key? key}) : super(key: key);


  @override
  _CannedFoodsDetailState createState() => _CannedFoodsDetailState();
}

class _CannedFoodsDetailState extends State<CannedFoodsDetail> {

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
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SEARCH);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_FAV);
                },
              ),
              SizedBox(width: 8,),
              IconButton(
                icon: const Icon(Icons.dataset_outlined,
                  size: 40,),
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CATEGORY);
                },
              ),
              SizedBox(width: 8,),
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
      title: "KONSERVE GIDALAR",
      imageUrl: "https://img.freepik.com/free-photo/top-view-preserved-food-cans-wooden-crate_23-2148793619.jpg?w=996&t=st=1686238007~exp=1686238607~hmac=dbd43385008fc97bbdc37f31e78c26361580e7174531fe39a4cb70b58dc603f2",
      info: " Konserve, ham maddenin bir takım ön işlemlerden sonra, teneke kutulara, cam kavanozlara veya amaca uygun benzer kaplara doldurulması, kapların hava almayacak şekilde (hermetikli) kapatılması ve ısıl işlemlerle (pastörizasyon veya sterilizasyon) bozulma yapabilen mikroorganizmaların öldürülmesi yoluyla üretilen dayanıklı bir üründür.",
      products: [
        Product(
          title: "TURŞU",
          imageUrl: "https://img.freepik.com/free-photo/pickled-vegetables-arrangement_23-2148606760.jpg?w=360&t=st=1686238126~exp=1686238726~hmac=a6d45d01ace1388af22430de4a34134e0940cb643d9de7847d9b3878b8f73a58",
          route: Constants.ROUTE_PICKLE,
        ),
        Product(
          title: "REÇEL",
          imageUrl: "https://img.freepik.com/free-photo/assortment-berry-jams-top-view_114579-11706.jpg?w=996&t=st=1686238155~exp=1686238755~hmac=a51c2f73a5f592f1952c89f7d80fb7d6bf7a26b516c1933d57f671b8c3e477e8",
          route: Constants.ROUTE_JAM,
        ),

      ],
    );
  }

}

