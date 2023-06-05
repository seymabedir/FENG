import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
          title: const Text(
              'BİZİMLE PAYLAŞMAK İSTER MİSİNİZ ?',
          style: TextStyle(fontSize: 15),
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
          color: Colors.lightBlueAccent,
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
      body: Column(
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
                  height: 200,
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
                    controller: _textEditingController,
                    maxLines: null, // Allows the TextField to expand and jump to next lines
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                        hintText: 'Deneyimlerinizi buraya yazabilirsiniz...',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),
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
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 350,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
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
                              // fotoğraf ekleme kısmı
                            },
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                        ),
                    ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
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
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
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
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                  sendReport();
                } ,
                child: Text(
                  'GÖNDER',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.grey,),
                ),
              ),
          ),
        ],
      ),
    );
  }

  sendReport() {
    print('gönderildi');
  }

}



