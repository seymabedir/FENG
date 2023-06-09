import 'package:flutter/material.dart';
import 'package:project/Categories/CannedFoodsDetail.dart';
import 'package:project/Products/AyranDetail.dart';
import 'package:project/Products/ButterDetail.dart';
import 'package:project/Products/CheeseDetail.dart';
import 'package:project/Products/CrabDetail.dart';
import 'package:project/Products/FishDetail.dart';
import 'package:project/Products/FruitJuiceProductDetail.dart';
import 'package:project/Products/IceCreamDetail.dart';
import 'package:project/Products/JamDetail.dart';
import 'package:project/Products/KetchupDetail.dart';
import 'package:project/Products/LobsterDetail.dart';
import 'package:project/Products/MayonnaiseDetail.dart';
import 'package:project/Products/MusselDetail.dart';
import 'package:project/Products/PickleDetail.dart';
import 'package:project/Products/RedMeatProductsDetail.dart';
import 'package:project/Products/ShrimpDetail.dart';
import 'package:project/Products/WhiteMeatProductsDetail.dart';
import 'package:project/Products/YoghurtDetail.dart';
import 'package:project/pages/EnterItem.dart';
import 'package:project/widgets/CategoryDetailWidget.dart';
import 'package:project/Categories/FruitJuiceDetail.dart';
import 'package:project/Categories/PreparedFoodsDetail.dart';
import 'package:project/Categories/RedMeatDetail.dart';
import 'package:project/Categories/WhiteMeatDetail.dart';
import 'package:project/main.dart';
import 'package:project/pages/AccountInfoPage.dart';
import 'package:project/pages/BoardPage.dart';
import 'package:project/pages/CategoryPage.dart';
import 'package:project/pages/CluePage.dart';
import 'package:project/Favorites/FavCluesPage.dart';
import 'package:project/Favorites/FavRecipesPage.dart';
import 'package:project/Favorites/FavSuggestionsPage.dart';
import 'package:project/Favorites/FavoriteItemPage.dart';
import 'package:project/HealthyConsumption/MilkHC.dart';
import 'package:project/pages/HelpPage.dart';
import 'package:project/LabelInformation/MilkLI.dart';
import 'package:project/NutritionValues/MilkNV.dart';
import 'package:project/Products/MilkDetail.dart';
import 'package:project/pages/SendRecipePage.dart';
import 'package:project/RecipeRecommendation/MilkRR.dart';
import 'package:project/pages/ReportPage.dart';
import 'package:project/pages/SearchPage.dart';
import 'package:project/pages/SettingsPage.dart';
import 'package:project/pages/SuggestionPage.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/Categories/DairyDetail.dart';
import 'package:project/pages/References.dart';
import 'package:project/pages/ContactPage.dart';
import 'package:project/Categories/SeaFoodDetail.dart';
import 'package:project/Categories/RedMeatDetail.dart';
import 'package:project/Recipes/Sutlac.dart';



class Routes {
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_DAIRY:(BuildContext context)=> DairyDetail(),
    Constants.ROUTE_MILK:(BuildContext context)=> MilkDetail(),
    Constants.ROUTE_PRODUCT_LABEL: (BuildContext context)=> MilkLI(),
    Constants.ROUTE_PRODUCT_NVALUES: (BuildContext context)=> MilkNV(),
    Constants.ROUTE_PRODUCT_HEALTHYC: (BuildContext context)=> MilkHC(),
    Constants.ROUTE_PRODUCT_RECIPEREC: (BuildContext context)=> MilkRR(),
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
    Constants.ROUTE_REDMEAT:(BuildContext context)=> RedMeatDetail(),
    Constants.ROUTE_SEAFOOD:(BuildContext context)=> SeaFoodDetail(),
    Constants.ROUTE_CANNED_FOODS:(BuildContext context)=> CannedFoodsDetail(),
    Constants.ROUTE_FRUIT_JUICE:(BuildContext context)=> FruitJuiceDetail(),
    Constants.ROUTE_PREPARED_FOODS:(BuildContext context)=> PreparedFoodsDetail(),
    Constants.ROUTE_WHITEMEAT:(BuildContext context)=> WhiteMeatDetail(),
    Constants.ROUTE_YOGHURT:(BuildContext context)=> YoghurtDetail(),
    Constants.ROUTE_CHEESE:(BuildContext context)=> CheeseDetail(),
    Constants.ROUTE_AYRAN:(BuildContext context)=> AyranDetail(),
    Constants.ROUTE_BUTTER:(BuildContext context)=> ButterDetail(),
    Constants.ROUTE_ICECREAM:(BuildContext context)=> IceCreamDetail(),
    Constants.ROUTE_WHITE_MEAT:(BuildContext context)=> WhiteMeatProductsDetail(),
    Constants.ROUTE_YOGHURT:(BuildContext context)=> YoghurtDetail(),
    Constants.ROUTE_FISH:(BuildContext context)=> FishDetail(),
    Constants.ROUTE_MUSSEL:(BuildContext context)=> MusselDetail(),
    Constants.ROUTE_LOBSTER:(BuildContext context)=> LobsterDetail(),
    Constants.ROUTE_CRAB:(BuildContext context)=> CrabDetail(),
    Constants.ROUTE_SHRIMP:(BuildContext context)=> ShrimpDetail(),
    Constants.ROUTE_RED_MEAT:(BuildContext context)=> RedMeatProductsDetail(),
    Constants.ROUTE_KETCHUP:(BuildContext context)=> KetchupDetail(),
    Constants.ROUTE_MAYONNAISE:(BuildContext context)=> MayonnaiseDetail(),
    Constants.ROUTE_FRUITJUICE:(BuildContext context)=> FruitJuiceProductDetail(),
    Constants.ROUTE_PICKLE:(BuildContext context)=> PickleDetail(),
    Constants.ROUTE_JAM:(BuildContext context)=> JamDetail(),
    Constants.ROUTE_MILKHC:(BuildContext context)=> MilkHC(),
    Constants.ROUTE_SUTLAC:(BuildContext context)=> Sutlac(),
    Constants.ROUTE_ENTER_ITEM:(BuildContext context)=> EnterItem(),






  };
}