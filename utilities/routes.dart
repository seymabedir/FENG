import 'package:flutter/material.dart';
import 'package:project/Categories/CannedFoodsDetail.dart';
import 'package:project/HealthyConsumption/AyranHC.dart';
import 'package:project/HealthyConsumption/ButterHC.dart';
import 'package:project/HealthyConsumption/CheeseHC.dart';
import 'package:project/HealthyConsumption/CrabHC.dart';
import 'package:project/HealthyConsumption/FishHC.dart';
import 'package:project/HealthyConsumption/FruitJuiceHC.dart';
import 'package:project/HealthyConsumption/IceCreamHC.dart';
import 'package:project/HealthyConsumption/JamHC.dart';
import 'package:project/HealthyConsumption/KetchupHC.dart';
import 'package:project/HealthyConsumption/LobsterHC.dart';
import 'package:project/HealthyConsumption/MayonnaiseHC.dart';
import 'package:project/HealthyConsumption/MusselHC.dart';
import 'package:project/HealthyConsumption/PickleHC.dart';
import 'package:project/HealthyConsumption/RedMeatHC.dart';
import 'package:project/HealthyConsumption/ShrimpHC.dart';
import 'package:project/HealthyConsumption/WhiteMeatHC.dart';
import 'package:project/HealthyConsumption/YoghurtHC.dart';
import 'package:project/LabelInformation/AyranLI.dart';
import 'package:project/LabelInformation/ButterLI.dart';
import 'package:project/LabelInformation/CheeseLI.dart';
import 'package:project/LabelInformation/CrabLI.dart';
import 'package:project/LabelInformation/FishLI.dart';
import 'package:project/LabelInformation/FruitJuiceLI.dart';
import 'package:project/LabelInformation/IceCreamLI.dart';
import 'package:project/LabelInformation/JamLI.dart';
import 'package:project/LabelInformation/KetchupLI.dart';
import 'package:project/LabelInformation/LobsterLI.dart';
import 'package:project/LabelInformation/MayonnaiseLI.dart';
import 'package:project/LabelInformation/MusselLI.dart';
import 'package:project/LabelInformation/PickleLI.dart';
import 'package:project/LabelInformation/RedMeatLI.dart';
import 'package:project/LabelInformation/ShrimpLI.dart';
import 'package:project/LabelInformation/WhiteMeatLI.dart';
import 'package:project/LabelInformation/YoghurtLI.dart';
import 'package:project/NutritionValues/AyranNV.dart';
import 'package:project/NutritionValues/ButterNV.dart';
import 'package:project/NutritionValues/CheeseNV.dart';
import 'package:project/NutritionValues/CrabNV.dart';
import 'package:project/NutritionValues/FishNV.dart';
import 'package:project/NutritionValues/FruitJuiceNV.dart';
import 'package:project/NutritionValues/IceCreamNV.dart';
import 'package:project/NutritionValues/JamNV.dart';
import 'package:project/NutritionValues/KetchupNV.dart';
import 'package:project/NutritionValues/LobsterNV.dart';
import 'package:project/NutritionValues/MayonnaiseNV.dart';
import 'package:project/NutritionValues/MusselNV.dart';
import 'package:project/NutritionValues/PickleNV.dart';
import 'package:project/NutritionValues/RedMeatNV.dart';
import 'package:project/NutritionValues/ShrimpNV.dart';
import 'package:project/NutritionValues/WhiteMeatNV.dart';
import 'package:project/NutritionValues/YoghurtNV.dart';
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
import 'package:project/RecipeRecommendation/AyranRR.dart';
import 'package:project/RecipeRecommendation/ButterRR.dart';
import 'package:project/RecipeRecommendation/CheeseRR.dart';
import 'package:project/RecipeRecommendation/CrabRR.dart';
import 'package:project/RecipeRecommendation/FishRR.dart';
import 'package:project/RecipeRecommendation/FruitJuiceRR.dart';
import 'package:project/RecipeRecommendation/IceCreamRR.dart';
import 'package:project/RecipeRecommendation/JamRR.dart';
import 'package:project/RecipeRecommendation/KetchupRR.dart';
import 'package:project/RecipeRecommendation/LobsterRR.dart';
import 'package:project/RecipeRecommendation/MayonnaiseRR.dart';
import 'package:project/RecipeRecommendation/MusselRR.dart';
import 'package:project/RecipeRecommendation/PickleRR.dart';
import 'package:project/RecipeRecommendation/RedMeatRR.dart';
import 'package:project/RecipeRecommendation/ShrimpRR.dart';
import 'package:project/RecipeRecommendation/WhiteMeatRR.dart';
import 'package:project/RecipeRecommendation/YoghurtRR.dart';
import 'package:project/Recipes/AyranliPisi.dart';
import 'package:project/Recipes/DusesPatates.dart';
import 'package:project/Recipes/HamsiliPilav.dart';
import 'package:project/Recipes/PeynirCubuklari.dart';
import 'package:project/Recipes/Pudding.dart';
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
    Constants.ROUTE_PRODUCT_LABEL: (BuildContext context)=> const MilkLI(), //*******
    Constants.ROUTE_PRODUCT_NVALUES: (BuildContext context)=> const MilkNV(), //*******
    Constants.ROUTE_PRODUCT_HEALTHYC: (BuildContext context)=> const MilkHC(), //*******
    Constants.ROUTE_PRODUCT_RECIPEREC: (BuildContext context)=> const MilkRR(), //*******
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
    Constants.ROUTE_ENTER_ITEM:(BuildContext context)=> const EnterItem(),

    // Red Meat
    Constants.ROUTE_RMLI: (BuildContext context)=> const RedMeatLI(),
    Constants.ROUTE_RMNV: (BuildContext context)=> const RedMeatNV(),
    Constants.ROUTE_RMHC: (BuildContext context)=> const RedMeatHC(),
    Constants.ROUTE_RMRR: (BuildContext context)=> const RedMeatRR(),
    // Ayran
    Constants.ROUTE_ALI: (BuildContext context)=> const AyranLI(),
    Constants.ROUTE_ANV: (BuildContext context)=> const AyranNV(),
    Constants.ROUTE_AHC: (BuildContext context)=> const AyranHC(),
    Constants.ROUTE_ARR: (BuildContext context)=> const AyranRR(),
    // Butter
    Constants.ROUTE_BLI: (BuildContext context)=> const ButterLI(),
    Constants.ROUTE_BNV: (BuildContext context)=> const ButterNV(),
    Constants.ROUTE_BHC: (BuildContext context)=> const ButterHC(),
    Constants.ROUTE_BRR: (BuildContext context)=> const ButterRR(),
    // Cheese
    Constants.ROUTE_CheeseLI: (BuildContext context)=> const CheeseLI(),
    Constants.ROUTE_CheeseNV: (BuildContext context)=> const CheeseNV(),
    Constants.ROUTE_CheeseHC: (BuildContext context)=> const CheeseHC(),
    Constants.ROUTE_CheeseRR: (BuildContext context)=> const CheeseRR(),
    // Crab
    Constants.ROUTE_CrabLI: (BuildContext context)=> const CrabLI(),
    Constants.ROUTE_CrabNV: (BuildContext context)=> const CrabNV(),
    Constants.ROUTE_CrabHC: (BuildContext context)=> const CrabHC(),
    Constants.ROUTE_CrabRR: (BuildContext context)=> const CrabRR(),
    // Fish
    Constants.ROUTE_FLI: (BuildContext context)=> const FishLI(),
    Constants.ROUTE_FNV: (BuildContext context)=> const FishNV(),
    Constants.ROUTE_FHC: (BuildContext context)=> const FishHC(),
    Constants.ROUTE_FRR: (BuildContext context)=> const FishRR(),
    // Fish
    Constants.ROUTE_FJLI: (BuildContext context)=> const FruitJuiceLI(),
    Constants.ROUTE_FJNV: (BuildContext context)=> const FruitJuiceNV(),
    Constants.ROUTE_FJHC: (BuildContext context)=> const FruitJuiceHC(),
    Constants.ROUTE_FJRR: (BuildContext context)=> const FruitJuiceRR(),
    // Ice Cream
    Constants.ROUTE_ICLI: (BuildContext context)=> const IceCreamLI(),
    Constants.ROUTE_ICNV: (BuildContext context)=> const IceCreamNV(),
    Constants.ROUTE_ICHC: (BuildContext context)=> const IceCreamHC(),
    Constants.ROUTE_ICRR: (BuildContext context)=> const IceCreamRR(),
    // Jam
    Constants.ROUTE_JLI: (BuildContext context)=> const JamLI(),
    Constants.ROUTE_JNV: (BuildContext context)=> const JamNV(),
    Constants.ROUTE_JHC: (BuildContext context)=> const JamHC(),
    Constants.ROUTE_JRR: (BuildContext context)=> const JamRR(),
    // Ketchup
    Constants.ROUTE_KLI: (BuildContext context)=> const KetchupLI(),
    Constants.ROUTE_KNV: (BuildContext context)=> const KetchupNV(),
    Constants.ROUTE_KHC: (BuildContext context)=> const KetchupHC(),
    Constants.ROUTE_KRR: (BuildContext context)=> const KetchupRR(),
    // Lobster
    Constants.ROUTE_LLI: (BuildContext context)=> const LobsterLI(),
    Constants.ROUTE_LNV: (BuildContext context)=> const LobsterNV(),
    Constants.ROUTE_LHC: (BuildContext context)=> const LobsterHC(),
    Constants.ROUTE_LRR: (BuildContext context)=> const LobsterRR(),
    // Mayonnaise
    Constants.ROUTE_MayoLI: (BuildContext context)=> const MayonnaiseLI(),
    Constants.ROUTE_MayoNV: (BuildContext context)=> const MayonnaiseNV(),
    Constants.ROUTE_MayoHC: (BuildContext context)=> const MayonnaiseHC(),
    Constants.ROUTE_MayoRR: (BuildContext context)=> const MayonnaiseRR(),
    // Mussel
    Constants.ROUTE_MusLI: (BuildContext context)=> const MusselLI(),
    Constants.ROUTE_MusNV: (BuildContext context)=> const MusselNV(),
    Constants.ROUTE_MusHC: (BuildContext context)=> const MusselHC(),
    Constants.ROUTE_MusRR: (BuildContext context)=> const MusselRR(),
    // Pickle
    Constants.ROUTE_PLI: (BuildContext context)=> const PickleLI(),
    Constants.ROUTE_PNV: (BuildContext context)=> const PickleNV(),
    Constants.ROUTE_PHC: (BuildContext context)=> const PickleHC(),
    Constants.ROUTE_PRR: (BuildContext context)=> const PickleRR(),
    // Shrimp
    Constants.ROUTE_SLI: (BuildContext context)=> const ShrimpLI(),
    Constants.ROUTE_SNV: (BuildContext context)=> const ShrimpNV(),
    Constants.ROUTE_SHC: (BuildContext context)=> const ShrimpHC(),
    Constants.ROUTE_SRR: (BuildContext context)=> const ShrimpRR(),
    // White Meat
    Constants.ROUTE_WMLI: (BuildContext context)=> const WhiteMeatLI(),
    Constants.ROUTE_WMNV: (BuildContext context)=> const WhiteMeatNV(),
    Constants.ROUTE_WMHC: (BuildContext context)=> const WhiteMeatHC(),
    Constants.ROUTE_WMRR: (BuildContext context)=> const WhiteMeatRR(),
    // Yoghurt
    Constants.ROUTE_YLI: (BuildContext context)=> const YoghurtLI(),
    Constants.ROUTE_YNV: (BuildContext context)=> const YoghurtNV(),
    Constants.ROUTE_YHC: (BuildContext context)=> const YoghurtHC(),
    Constants.ROUTE_YRR: (BuildContext context)=> const YoghurtRR(),

    //Tarifler
    Constants.ROUTE_PUDDING: (BuildContext context)=> const Pudding(),
    Constants.ROUTE_SUTLAC:(BuildContext context)=> const Sutlac(),
    Constants.ROUTE_PISI:(BuildContext context)=> const AyranliPisi(),
    Constants.ROUTE_DUSES_PATATES:(BuildContext context)=> const DusesPatates(),
    Constants.ROUTE_PEYNIR_CUBUKLARI:(BuildContext context)=> const PeynirCubuklari(),
    Constants.ROUTE_HAMSILI_PILAV:(BuildContext context)=> const HamsiliPilav(),

  };
}