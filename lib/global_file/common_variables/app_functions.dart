import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Size SCREEN_SIZE;
double IPHONE_11_PRO_MAX_HEIGHT = 896;
double IPHONE_11_PRO_MAX_Width = 414;

double getDynamicHeight( double height,){
  double actualHeightPercentage = height/IPHONE_11_PRO_MAX_HEIGHT;
  double dynamicHeight = actualHeightPercentage * SCREEN_SIZE.height;

  return dynamicHeight;
}

double getDynamicWidth( double width){
  double actualHeightPercentage = width/IPHONE_11_PRO_MAX_Width;
  double dynamicWidth = actualHeightPercentage * SCREEN_SIZE.width;

  return dynamicWidth;
}

double getDynamicTextSize(double size){
  double actualSizePercentage = size/IPHONE_11_PRO_MAX_Width;
  double dynamicTextSize = actualSizePercentage * SCREEN_SIZE.width;

  return dynamicTextSize;
}
