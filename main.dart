import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Eat',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, //white
      ),
      home: const HomePage(title: ''),
      routes: Routes.routes,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(150, 210, 250, 1),
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              icon: Icon(Icons.account_circle_outlined),
            );
          }),
        ],
        title: Text(title),
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

      endDrawer: Drawer(
        backgroundColor: Colors.white60,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.account_circle,
                      color: Colors.black54,
                  size: 50,
                  ),
                  title: const Text('PROFİL',
                  style: TextStyle(fontSize: 25.0, color: Colors.black54,),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.account_circle_outlined,
                        color: Colors.black87),
                    title: const Text('Hesap Bilgileri'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_ACCOUNTINFO);
                    },
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori İpuçları'),
                    onTap: () {
                      Navigator.of(context).pushNamed(Constants.ROUTE_FAVCLUE);
                    },
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori Yemek Önerileri'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_FAVSUGGESTIONS);
                    },
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori Tarifler'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_FAVRECIPES);
                    },
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading:
                        Icon(Icons.view_stream_outlined, color: Colors.black87),
                    title: const Text('Dolap'),
                    onTap: () {
                      Navigator.of(context).pushNamed(Constants.ROUTE_BOARD);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 10.0,
              ),
               Container(
                 width: 300,
                 child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Constants.ROUTE_CLUE_PAGE);
                  },
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('images/yemek.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white30,
                            ),
                          ),
                    ),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '\n İPUÇLARI',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
              ),
               ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SUGGESTION_PAGE);
                  //basıldığında o günün yemek önerisi ne ise ona gitsin
                },
                child: Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3.0,
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/yemek.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                       child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            '\n ÖNERİLER',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 230,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4.0,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(200, 235, 254, 10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                          color:
                              Colors.white, //Color.fromRGBO(232, 234, 246, 100),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            'SON GÖRÜNTÜLENENLER',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(26, 35, 126, 10),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            //******* son iki item için 1. ********
                            onPressed: () {
                              //_GoClues(context);
                            },
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4.0,
                                  color: Color.fromRGBO(26, 35, 126, 10),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                image: DecorationImage(
                                  image: AssetImage('images/yemek.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            //******* son iki item için 2. ********
                            onPressed: () {
                              //_GoClues(context);
                            },
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              width: 100,
                              height: 150,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4.0,
                                  color: Color.fromRGBO(26, 35, 126, 10),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                                color: Colors.blue.withOpacity(0.5),
                                image: DecorationImage(
                                  image: AssetImage('images/yemek.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(Icons.density_medium_sharp,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text('MENÜ',
                    style: TextStyle(fontSize: 25.0, color: Colors.black54,),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.black87),
                title: const Text('Ayarlar'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SETTINGS);
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.black87),
                title: const Text('Yardım'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HELP);
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.message_outlined, color: Colors.black87),
                title: const Text('İletişim'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CONTACT);
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.description_sharp, color: Colors.black87),
                title: const Text('Referanslar'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_REFERENCES);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
