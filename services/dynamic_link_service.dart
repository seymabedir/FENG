import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:project/Products/MilkDetail.dart';

class DynamicLinksProvider {
  final dynamicLink = FirebaseDynamicLinks.instance;

  Future<void> initDynamicLinks(BuildContext context) async {
    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      handleSuccessLinking(data: dynamicLinkData, context: context);
    }).onError((error) {
      print('onLink error');
    });
  }

  void handleSuccessLinking(
      {PendingDynamicLinkData? data, BuildContext? context}) {
    Navigator.push(
      context!,
      MaterialPageRoute(
        builder: (context) => const MilkDetail(),
      ),
    );
  }

  Future<String> createLink(String smeatParameters) async {
    final String url = "https://smeat.page.link/$smeatParameters";

    final DynamicLinkParameters dynamicLinkParameters = DynamicLinkParameters(
      link: Uri.parse(url),
      uriPrefix: "https://smeat.page.link",
      androidParameters: const AndroidParameters(
        packageName: 'com.example.project',
      ),
    );

    final ShortDynamicLink shortLink =
        await dynamicLink.buildShortLink(dynamicLinkParameters);

    final Uri dynamicUrl = shortLink.shortUrl;
    debugPrint(dynamicUrl.toString());
    return dynamicUrl.toString();
  }
}
