
import 'package:flutter/cupertino.dart';

double IPHONE_11_PRO_MAX_HEIGHT = 896;
double IPHONE_11_PRO_MAX_Width = 414;

double getDynamicHeight(double height, BuildContext context){
  double actualHeightPercentage = height/IPHONE_11_PRO_MAX_HEIGHT;
  double dynamicHeight = actualHeightPercentage * MediaQuery.of(context).size.height;

  return dynamicHeight;
}

double getDynamicWidth( double width, BuildContext context){
  double actualHeightPercentage = width/IPHONE_11_PRO_MAX_Width;
  double dynamicWidth = actualHeightPercentage * MediaQuery.of(context).size.width;

  return dynamicWidth;
}

double getDynamicTextSize(double size, BuildContext context){
  double actualSizePercentage = size/IPHONE_11_PRO_MAX_Width;
  double dynamicTextSize = actualSizePercentage * MediaQuery.of(context).size.width;

  return dynamicTextSize;
}
