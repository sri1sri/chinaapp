import 'package:chinaapp/constant.dart';
import 'package:chinaapp/global_file/common_widgets/app_card.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:uninstall_apps/uninstall_apps.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_HomeScreen(),
    );
  }
}

class F_HomeScreen extends StatefulWidget {
  @override
  _F_HomeScreen createState() => _F_HomeScreen();
}

class _F_HomeScreen extends State<F_HomeScreen> {

  Future<void> initPlatformState(String appID) async {
    await UninstallApps.uninstall(appID);
  }

  Future<dynamic> deviceApps() {
    return DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: false,
        onlyAppsWithLaunchIntent: false);
  }

  final chineseApps = ["com.zhiliaoapp.musically.go",
    "com.uc.browser.en",
    "video.like",
    "com.ss.android.ugc.boom",
    "sg.bigo.live",
    "com.youdao.hindict",
    "com.commsource.beautyplus",
    "us.zoom.videomeetings",
    "com.lenovo.anyshare.gps",
    "com.UCMobile.intl",
    "com.zhiliaoapp.musically",
    "com.videochat.livu",
    "com.kwai.video",
    "com.domobile.applockwatcher",
    "com.romwe",
    "com.zzkko",
    "com.foodshuttle.alldownloader",
    "cn.xender",
    "app.buzz.share",
    "com.xprodev.cutcam",
    "com.intsig.camscanner",
    "club.fromfactory",
    "com.uc.vmate"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Scaffold(
        body: _buildContent(context),
      ),
    );
  }




  Widget _buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: kTitleTextColor,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              size: 30,
              color: kTitleTextColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:             DelayedDisplay(
        delay: Duration(seconds: 1),
        fadingDuration: Duration(seconds: 1),
        slidingCurve: Curves.easeInCirc,
        child: buildAppList(),
      ),


//      SafeArea(
//        bottom: false,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
////              DelayedDisplay(
////                delay: Duration(seconds: 1),
////                fadingDuration: Duration(seconds: 1),
////                slidingCurve: Curves.easeInCirc,
////                child: Row(
////                  mainAxisAlignment: MainAxisAlignment.center,
////                  children: [
////                    Lottie.network(
////                        "https://assets4.lottiefiles.com/private_files/lf30_YWyaYi.json",
////                        height: 200,
////                        width: 200),
////                  ],
////                ),
////              ),
//            SizedBox(
//              height: 10,
//            ),
//            DelayedDisplay(
//              delay: Duration(seconds: 1),
//              fadingDuration: Duration(seconds: 1),
//              slidingCurve: Curves.easeInCirc,
//              child: Padding(
//                padding: EdgeInsets.symmetric(horizontal: 30),
//                child: Text(
//                  'China Apps Found in\nyour System.',
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    fontSize: 32,
//                    color: kTitleTextColor,
//                  ),
//                ),
//              ),
//            ),
//            SizedBox(
//              height: 10,
//            ),
//            DelayedDisplay(
//              delay: Duration(seconds: 1),
//              fadingDuration: Duration(seconds: 1),
//              slidingCurve: Curves.easeInCirc,
//              child: Padding(
//                padding: EdgeInsets.symmetric(horizontal: 30),
//                child: Text(
//                  'The Apps which you are detelting will be permenently removed from your device.',
//                  style: TextStyle(
//                    fontWeight: FontWeight.w600,
//                    fontSize: 16,
//                    color: kSearchTextColor,
//                  ),
//                ),
//              ),
//            ),
//            SizedBox(
//              height: 30,
//            ),
//            DelayedDisplay(
//              delay: Duration(seconds: 1),
//              fadingDuration: Duration(seconds: 1),
//              slidingCurve: Curves.easeInCirc,
//              child: Padding(
//                padding: EdgeInsets.symmetric(horizontal: 30),
//                child: Text(
//                  'Apps which detected',
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                    color: kTitleTextColor,
//                    fontSize: 18,
//                  ),
//                ),
//              ),
//            ),
//            SizedBox(
//              height: 20,
//            ),
//            DelayedDisplay(
//              delay: Duration(seconds: 1),
//              fadingDuration: Duration(seconds: 1),
//              slidingCurve: Curves.easeInCirc,
//              child: buildAppList(),
//            ),
//          ],
//        ),
//      ),
    );
  }

  buildAppList() {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: FutureBuilder(
            future: deviceApps(),
            builder: (context, data) {
              if (data.data == null) {
                return Center(child: CircularProgressIndicator());
              } else {
                List<Application> apps = data.data;
                print(apps);
                return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, position) {
                      Application app = apps[position];
                      return Column(
                        children: <Widget>[

                      chineseApps.contains(app.packageName) ? AppCard(
                            app.appName,
                            app is ApplicationWithIcon
                                ? CircleAvatar(
                              backgroundImage: MemoryImage(app.icon),
                              backgroundColor: Colors.transparent,
                            ) : null,
                                  (){
                                    initPlatformState(app.packageName);
                                    setState(() {
                                      deviceApps();
                                    });
                            }
                          ): Container(height: 0, width: 0,),
                          //Container(child: Text("You don't have any chinese apps in your mobile."),),
                          Divider(
                            height: 20.0,
                          )
                        ],
                      );
                    },
                    itemCount: apps.length);
              }
            })

        );
  }
}
