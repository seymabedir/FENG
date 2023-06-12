import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';


class EnterItem extends StatefulWidget {
  const EnterItem({Key? key}) : super(key: key);

  @override
  _EnterItemState createState() => _EnterItemState();
}

class _EnterItemState extends State<EnterItem> {
  final TextEditingController _SKTController = TextEditingController();
  final TextEditingController _ODController = TextEditingController();
  final TextEditingController _NODController = TextEditingController();


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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: _SKTController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: 'Son Kullanma Tarihi : ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: _ODController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: 'Ürünün Açıldığı Tarih : ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      controller: _NODController,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: 'Açıldıktan Sonra Kullanılabilen Gün Sayısı :  ',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.0,
                        color: Colors.lightBlueAccent.shade200,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Fotoğraf eklemek ister misiniz ?',
                        style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 350,
                  ),
                  Center(
                      child : Container(
                        alignment: Alignment.centerRight,
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Colors.lightBlueAccent,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              // Handle button press
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold,),
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4.0,
                  color: Colors.lightBlueAccent,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextButton(
                onPressed: () {
                  sendRecipe();
                },
                child: Text(
                  'GÖNDER',
                  style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  sendRecipe() {
    print('Ürün Dolaba Eklendi...');
  }
}

