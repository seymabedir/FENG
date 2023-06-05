import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/pages/AccountInfoPage.dart';
import 'package:project/pages/BoardPage.dart';
import 'package:project/pages/CategoryPage.dart';
import 'package:project/pages/CluePage.dart';
import 'package:project/pages/FavCluesPage.dart';
import 'package:project/pages/FavRecipesPage.dart';
import 'package:project/pages/FavSuggestionsPage.dart';
import 'package:project/pages/FavoriteItemPage.dart';
import 'package:project/pages/HealthyConsumption.dart';
import 'package:project/pages/HelpPage.dart';
import 'package:project/pages/LabelInfo.dart';
import 'package:project/pages/NutritionValues.dart';
import 'package:project/pages/ProductList.dart';
import 'package:project/pages/SendRecipePage.dart';
import 'package:project/pages/RecipeRecommendation.dart';
import 'package:project/pages/ReportPage.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/SettingsPage.dart';
import 'package:project/pages/SuggestionPage.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/pages/CategoryDetail.dart';
import 'package:project/pages/References.dart';
import 'package:project/pages/ContactPage.dart';



class Routes {
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_CATEGORY_DETAIL:(BuildContext context)=> CategoryDetail(),
    Constants.ROUTE_CATEGORY_PRODUCT:(BuildContext context)=> ProductList(),
    Constants.ROUTE_PRODUCT_LABEL: (BuildContext context)=> LabelInfo(),
    Constants.ROUTE_PRODUCT_NVALUES: (BuildContext context)=> NutritionValues(),
    Constants.ROUTE_PRODUCT_HEALTHYC: (BuildContext context)=> HealthyConsumption(),
    Constants.ROUTE_PRODUCT_RECIPEREC: (BuildContext context)=> RecipeRecommendation(),
    Constants.ROUTE_REFERENCES: (BuildContext context)=> References(),
    Constants.ROUTE_SETTINGS: (BuildContext context)=> SettingsPage(),
    Constants.ROUTE_HELP: (BuildContext context)=> HelpPage(),
    Constants.ROUTE_CONTACT: (BuildContext context)=> ContactPage(),
    Constants.ROUTE_HOME: (BuildContext context)=> HomePage(title: '',),
    Constants.ROUTE_SEARCH: (BuildContext context)=> SearchPage(),
    Constants.ROUTE_FAV: (BuildContext context)=> FavoriteItemPage(),
    Constants.ROUTE_CATEGORY: (BuildContext context)=> CategoryPage(),
    Constants.ROUTE_ACCOUNTINFO: (BuildContext context)=> AccountInfoPage(),
    Constants.ROUTE_FAVCLUE: (BuildContext context)=> FavCluesPage(),
    Constants.ROUTE_FAVSUGGESTIONS: (BuildContext context)=> FavSuggestionsPage(),
    Constants.ROUTE_FAVRECIPES: (BuildContext context)=> FavRecipesPage(),
    Constants.ROUTE_BOARD: (BuildContext context)=> BoardPage(),
    Constants.ROUTE_CLUE_PAGE: (BuildContext context)=> CluePage(),
    Constants.ROUTE_SUGGESTION_PAGE: (BuildContext context)=> SuggestionPage(),
    Constants.ROUTE_REPORT: (BuildContext context)=> ReportPage(),
    Constants.ROUTE_SEND_RECIPE: (BuildContext context)=> SendRecipePage(),



  };
}