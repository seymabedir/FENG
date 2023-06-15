import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project/Products/MilkDetail.dart';
import 'package:project/pages/app_widget.dart';
import 'package:project/services/dynamic_link_service.dart';
import 'package:project/utilities/routes.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final PendingDynamicLinkData? initialLink =
      await FirebaseDynamicLinks.instance.getInitialLink();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    DynamicLinksProvider().initDynamicLinks(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMEAT',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, //white
      ),
      home: const AppWidget(),
      routes: Routes.routes,
    );
  }
}
