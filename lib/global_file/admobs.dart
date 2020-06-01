//
//import 'dart:io';
//
//import 'package:firebase_admob/firebase_admob.dart';
//import 'package:flutter/material.dart';
//
//class Ads {
//  static bool isShown = false;
//  static bool _isGoingToBeShown = false;
//  static BannerAd _bannerAd;
//
//  static void initialize() {
//    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-9543395526409232~3646505580');
//  }
//
//  static void setBannerAd() {
//    _bannerAd = BannerAd(
//      adUnitId: 'ca-app-pub-9543395526409232/5697953853',
//      size: AdSize.smartBanner,
//      targetingInfo: _getMobileAdTargetingInfo(),
//      listener: (MobileAdEvent event) {
//        if (event == MobileAdEvent.loaded) {
//          isShown = true;
//          _isGoingToBeShown = false;
//        } else if (event == MobileAdEvent.failedToLoad) {
//          isShown = false;
//          _isGoingToBeShown = false;
//        }
//        print("BannerAd event is $event");
//      },
//    );
//  }
//
//  static void showBannerAd([State state]) {
//    if (state != null && !state.mounted) return;
//    if (_bannerAd == null) setBannerAd();
//    if (!isShown && !_isGoingToBeShown) {
//      _isGoingToBeShown = true;
//      _bannerAd
//        ..load()
//        ..show(anchorOffset: 70.0, anchorType: AnchorType.bottom);
//    }
//  }
//
//  static void hideBannerAd() {
//    if (_bannerAd != null && !_isGoingToBeShown) {
//      _bannerAd.dispose().then((disposed) {
//        isShown = !disposed;
//      });
//      _bannerAd = null;
//    }
//  }
//
//
//
//  static MobileAdTargetingInfo _getMobileAdTargetingInfo() {
//    return MobileAdTargetingInfo(
//      keywords: <String>['flower', 'identify flower', 'plant', 'tree', 'botany', 'identification key'],
//      contentUrl: 'https://whatsthatflower.com/',
//      childDirected: false,
//      testDevices: <String>[],
//    );
//  }
//
//  String ANDROID_APP_ID = 'ca-app-pub-9543395526409232~3646505580';
//
//  String ANDROID_AD_UNIT_NATIVE = 'ca-app-pub-9543395526409232/7394178907';
//  String ANDROID_AD_UNIT_BANNER = 'ca-app-pub-9543395526409232/5697953853';
//
////
//}