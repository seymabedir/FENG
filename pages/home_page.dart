import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/pages/sign_in_page.dart';
import 'package:project/services/providers.dart';
import 'package:project/utilities/constants.dart';


class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(200, 235, 254, 10),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              icon: const Icon(Icons.account_circle_outlined),
            );
          }),
        ],
        title: const Text(''),
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
                  color: Colors.grey,
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
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.black54,
                    size: 50,
                  ),
                  title: Text(
                    'PROFİL',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black54,
                    ),
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
                    leading: const Icon(Icons.account_circle_outlined,
                        color: Colors.black87),
                    title: const Text('Hesap Bilgileri'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_ACCOUNTINFO);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori İpuçları'),
                    onTap: () {
                      Navigator.of(context).pushNamed(Constants.ROUTE_FAVCLUE);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori Yemek Önerileri'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_FAVSUGGESTIONS);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.favorite_border_outlined,
                        color: Colors.black87),
                    title: const Text('Favori Tarifler'),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Constants.ROUTE_FAVRECIPES);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  //
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.view_stream_outlined,
                        color: Colors.black87),
                    title: const Text('Dolap'),
                    onTap: () {
                      Navigator.of(context).pushNamed(Constants.ROUTE_BOARD);
                    },
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.exit_to_app,
                        color: Colors.black87),
                    title: const Text('Çıkış'),
                    onTap: () async {
                      print('çıkış yapıldı');
                      await ref.read(authNotifierProvider.notifier).signOut();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
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
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/free-photo/young-woman-is-preparing-salad-kitchen_169016-2274.jpg?w=996&t=st=1686262653~exp=1686263253~hmac=a34ee2890e8c884534cef77ef5c62b514f47b435d82e68eb4d3dbb9de313cad9"),
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
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          '\n İPUÇLARI',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black54,
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
                Navigator.of(context)
                    .pushNamed(Constants.ROUTE_SUGGESTION_PAGE);
              },
              child: Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-photo/top-view-table-full-delicious-food-arrangement_23-2149141326.jpg?w=996&t=st=1686262611~exp=1686263211~hmac=bb6fc4c184140adf8a446aa7982f82024ee30bb8a97d84081581193e9a5cd0c3"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    '\n ÖNERİLER',
                    style: TextStyle(
                      fontSize: 25,
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
                  color: const Color.fromRGBO(200, 235, 254, 10),
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
                      child: const Center(
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
                            Navigator.of(context)
                                .pushNamed(Constants.ROUTE_AYRAN);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4.0,
                                color: const Color.fromRGBO(26, 35, 126, 10),
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                              color: Colors.blue.withOpacity(0.5),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-photo/ayran-drink-with-mint-cucumber-glass-wooden-table_123827-21428.jpg?w=996&t=st=1686232158~exp=1686232758~hmac=dfbd09bf4b19944fd01a4878e8cba36619c0d8a3481c0d692644a6642ddf601d"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          //******* son iki item için 2. ********
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Constants.ROUTE_BUTTER);
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 100,
                            height: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 4.0,
                                color: const Color.fromRGBO(26, 35, 126, 10),
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                              color: Colors.blue.withOpacity(0.5),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-photo/top-view-two-slices-rye-dry-bread-as-toast-with-butter-breakfast-with-vintage-knife-it-everything-craft-paper_346278-650.jpg?w=996&t=st=1686232316~exp=1686232916~hmac=c820138b44a5903c0bed58f6a54c19e3f5b8661a92360a4c26d857bb6099033d"),
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
                  leading: Icon(
                    Icons.density_medium_sharp,
                    color: Colors.black54,
                    size: 30,
                  ),
                  title: const Text(
                    'MENÜ',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.settings, color: Colors.black87),
                title: const Text('Ayarlar'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_SETTINGS);
                },
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.help, color: Colors.black87),
                title: const Text('Yardım'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_HELP);
                },
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading:
                    const Icon(Icons.message_outlined, color: Colors.black87),
                title: const Text('İletişim'),
                onTap: () {
                  Navigator.of(context).pushNamed(Constants.ROUTE_CONTACT);
                },
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 60.0,
              color: Colors.white,
              child: ListTile(
                leading:
                    const Icon(Icons.description_sharp, color: Colors.black87),
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
