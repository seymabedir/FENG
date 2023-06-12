import 'package:flutter/material.dart';
import 'package:project/utilities/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _enableNotifications = true;
  bool _enableDarkMode = false;

  void _toggleNotifications(bool value) {
    setState(() {
      _enableNotifications = value;
    });
  }

  void _toggleDarkMode(bool value) {
    setState(() {
      _enableDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(200, 235, 254, 10),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(200, 235, 254, 10),
          title: const Text('AYARLAR'),
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
                  color: Colors.black,
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
      body: ListView(
        children: [
          ListTile(
            title: Text('Notifications'),
            trailing: Switch(
              value: _enableNotifications,
              onChanged: _toggleNotifications,
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _enableDarkMode,
              onChanged: _toggleDarkMode,
            ),
          ),
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/language');
            },
          ),
        ],
      ),
    );
  }

}



