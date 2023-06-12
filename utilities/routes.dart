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
import 'package:project/pages/home_page.dart';
import 'package:project/pages/EnterItem.dart';
import 'package:project/Categories/FruitJuiceDetail.dart';
import 'package:project/Categories/PreparedFoodsDetail.dart';
import 'package:project/Categories/RedMeatDetail.dart';
import 'package:project/Categories/WhiteMeatDetail.dart';
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
import 'package:project/Recipes/Sutlac.dart';



class Routes {
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_DAIRY:(BuildContext context)=> const DairyDetail(),
    Constants.ROUTE_MILK:(BuildContext context)=> const MilkDetail(),
    Constants.ROUTE_PRODUCT_LABEL: (BuildContext context)=> const MilkLI(),
    Constants.ROUTE_PRODUCT_NVALUES: (BuildContext context)=> const MilkNV(),
    Constants.ROUTE_PRODUCT_HEALTHYC: (BuildContext context)=> const MilkHC(),
    Constants.ROUTE_PRODUCT_RECIPEREC: (BuildContext context)=> const MilkRR(),
    Constants.ROUTE_REFERENCES: (BuildContext context)=> const References(),
    Constants.ROUTE_SETTINGS: (BuildContext context)=> const SettingsPage(),
    Constants.ROUTE_HELP: (BuildContext context)=> const HelpPage(),
    Constants.ROUTE_CONTACT: (BuildContext context)=> const ContactPage(),
    Constants.ROUTE_HOME: (BuildContext context)=> const HomePage(),
    Constants.ROUTE_SEARCH: (BuildContext context)=> const SearchPage(),
    Constants.ROUTE_FAV: (BuildContext context)=> const FavoriteItemPage(),
    Constants.ROUTE_CATEGORY: (BuildContext context)=> const CategoryPage(),
    Constants.ROUTE_ACCOUNTINFO: (BuildContext context)=> const AccountInfoPage(),
    Constants.ROUTE_FAVCLUE: (BuildContext context)=> const FavCluesPage(),
    Constants.ROUTE_FAVSUGGESTIONS: (BuildContext context)=> const FavSuggestionsPage(),
    Constants.ROUTE_FAVRECIPES: (BuildContext context)=> const FavRecipesPage(),
    Constants.ROUTE_BOARD: (BuildContext context)=> const BoardPage(),
    Constants.ROUTE_CLUE_PAGE: (BuildContext context)=> const CluePage(),
    Constants.ROUTE_SUGGESTION_PAGE: (BuildContext context)=> const SuggestionPage(),
    Constants.ROUTE_REPORT: (BuildContext context)=> const ReportPage(),
    Constants.ROUTE_SEND_RECIPE: (BuildContext context)=> const SendRecipePage(),
    Constants.ROUTE_REDMEAT:(BuildContext context)=> const RedMeatDetail(),
    Constants.ROUTE_SEAFOOD:(BuildContext context)=> const SeaFoodDetail(),
    Constants.ROUTE_CANNED_FOODS:(BuildContext context)=> const CannedFoodsDetail(),
    Constants.ROUTE_FRUIT_JUICE:(BuildContext context)=> const FruitJuiceDetail(),
    Constants.ROUTE_PREPARED_FOODS:(BuildContext context)=> const PreparedFoodsDetail(),
    Constants.ROUTE_WHITEMEAT:(BuildContext context)=> const WhiteMeatDetail(),
    Constants.ROUTE_CHEESE:(BuildContext context)=> const CheeseDetail(),
    Constants.ROUTE_AYRAN:(BuildContext context)=> const AyranDetail(),
    Constants.ROUTE_BUTTER:(BuildContext context)=> const ButterDetail(),
    Constants.ROUTE_ICECREAM:(BuildContext context)=> const IceCreamDetail(),
    Constants.ROUTE_WHITE_MEAT:(BuildContext context)=> const WhiteMeatProductsDetail(),
    Constants.ROUTE_YOGHURT:(BuildContext context)=> const YoghurtDetail(),
    Constants.ROUTE_FISH:(BuildContext context)=> const FishDetail(),
    Constants.ROUTE_MUSSEL:(BuildContext context)=> const MusselDetail(),
    Constants.ROUTE_LOBSTER:(BuildContext context)=> const LobsterDetail(),
    Constants.ROUTE_CRAB:(BuildContext context)=> const CrabDetail(),
    Constants.ROUTE_SHRIMP:(BuildContext context)=> const ShrimpDetail(),
    Constants.ROUTE_RED_MEAT:(BuildContext context)=> const RedMeatProductsDetail(),
    Constants.ROUTE_KETCHUP:(BuildContext context)=> const KetchupDetail(),
    Constants.ROUTE_MAYONNAISE:(BuildContext context)=> const MayonnaiseDetail(),
    Constants.ROUTE_FRUITJUICE:(BuildContext context)=> const FruitJuiceProductDetail(),
    Constants.ROUTE_PICKLE:(BuildContext context)=> const PickleDetail(),
    Constants.ROUTE_JAM:(BuildContext context)=> const JamDetail(),
    Constants.ROUTE_SUTLAC:(BuildContext context)=> const Sutlac(),
    Constants.ROUTE_ENTER_ITEM:(BuildContext context)=> const EnterItem(),
  };
}