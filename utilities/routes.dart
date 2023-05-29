import 'package:flutter/material.dart';
import 'package:project/pages/HealthyConsumption.dart';
import 'package:project/pages/LabelInfo.dart';
import 'package:project/pages/NutritionValues.dart';
import 'package:project/pages/ProductList.dart';
import 'package:project/pages/RecipeRecommendation.dart';
import 'package:project/utilities/constants.dart';
import 'package:project/pages/CategoryDetail.dart';

class Routes {
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_CATEGORY_DETAIL:(BuildContext context)=> CategoryDetail(),
    Constants.ROUTE_CATEGORY_PRODUCT:(BuildContext context)=> ProductList(),
    Constants.ROUTE_PRODUCT_LABEL: (BuildContext context)=> LabelInfo(),
    Constants.ROUTE_PRODUCT_NVALUES: (BuildContext context)=> NutritionValues(),
    Constants.ROUTE_PRODUCT_HEALTHYC: (BuildContext context)=> HealthyConsumption(),
    Constants.ROUTE_PRODUCT_RECIPEREC: (BuildContext context)=> RecipeRecommendation(),

  };
}