import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

double IPHONE_11_PRO_MAX_HEIGHT = 896;
double IPHONE_11_PRO_MAX_Width = 414;

double getDynamicHeight(double height){
  double actualHeightPercentage = height/IPHONE_11_PRO_MAX_HEIGHT;
  double dynamicHeight = actualHeightPercentage * (window.physicalSize.height/3);

  return dynamicHeight;
}

double getDynamicWidth( double width){
  double actualHeightPercentage = width/IPHONE_11_PRO_MAX_Width;
  double dynamicWidth = actualHeightPercentage * (window.physicalSize.width/3);

  return dynamicWidth;
}

double getDynamicTextSize(double size){
  double actualSizePercentage = size/IPHONE_11_PRO_MAX_Width;
  double dynamicTextSize = actualSizePercentage * (window.physicalSize.width/3);

  return dynamicTextSize;
}
