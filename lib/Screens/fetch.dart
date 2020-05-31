import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:uninstall_apps/uninstall_apps.dart';

class ListAppsPages extends StatefulWidget {
  @override
  _ListAppsPagesState createState() => _ListAppsPagesState();
}

class _ListAppsPagesState extends State<ListAppsPages> {
  bool _showSystemApps = false;
  bool _onlyLaunchableApps = false;

  Future<void> initPlatformState(String appID) async {
    await UninstallApps.uninstall(appID);
  }

  Future<dynamic> dataa(){
    return DeviceApps.getInstalledApplications(
        includeAppIcons: true,
        includeSystemApps: false,
        onlyAppsWithLaunchIntent: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Installed applications"),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context) {
              return <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                    value: 'system_apps', child: Text('Toggle system apps')),
                PopupMenuItem<String>(
                  value: "launchable_apps",
                  child: Text('Toggle launchable apps only'),
                )
              ];
            },
            onSelected: (key) {
              if (key == "system_apps") {
                setState(() {
                  _showSystemApps = !_showSystemApps;
                });
              }
              if (key == "launchable_apps") {
                setState(() {
                  _onlyLaunchableApps = !_onlyLaunchableApps;
                });
              }
            },
          )
        ],
      ),
      body: FutureBuilder(
          future: dataa(),
          builder: (context, data) {
            if (data.data == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<Application> apps = data.data;
              print(apps);
              return ListView.builder(
                  itemBuilder: (context, position) {
                    Application app = apps[position];
                    return Column(
                      children: <Widget>[
//                      ['com.skype.raider', 'com.kondasri.tellthetruth', 'com.linecorp.b612.android'].contains(app.packageName) ?
                        ListTile(
                          leading: app is ApplicationWithIcon
                              ? CircleAvatar(
                            backgroundImage: MemoryImage(app.icon),
                            backgroundColor: Colors.white,
                          )
                              : null,
                          onTap: () => {
                            initPlatformState(app.packageName),
                            setState((){
                              dataa();
                            })
                          },
                          title: Text("${app.appName} (${app.packageName})"),
                        ),
//                          : Container(height: 0, width: 0,),
                        Divider(
                          height: 1.0,
                        )
                      ],
                    );
                  },
                  itemCount: apps.length);
            }
          }),
    );
  }
}

//class ListAppsPagesContent extends StatelessWidget {
//
//  class ListAppsPagesContent extends StatefulWidget {
//  @override
//  _ListAppsPagesContent createState() => _ListAppsPagesContent();
//  }
//
//  class _ListAppsPagesContent extends State<ListAppsPages> {
//
//
////  final bool includeSystemApps;
////  final bool onlyAppsWithLaunchIntent;
////
////  const ListAppsPagesContent(
////      {Key key,
////        this.includeSystemApps: false,
////        this.onlyAppsWithLaunchIntent: false})
////      : super(key: key);
//
//
//  Future<void> initPlatformState(String appID) async {
//    await UninstallApps.uninstall(appID);
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return FutureBuilder(
//        future: DeviceApps.getInstalledApplications(
//            includeAppIcons: true,
//            includeSystemApps: false,
//            onlyAppsWithLaunchIntent: false),
//        builder: (context, data) {
//          if (data.data == null) {
//            return Center(child: CircularProgressIndicator());
//          } else {
//            List<Application> apps = data.data;
//            print(apps);
//            return ListView.builder(
//                itemBuilder: (context, position) {
//                  Application app = apps[position];
//                  return Column(
//                    children: <Widget>[
////                      ['com.skype.raider', 'com.kondasri.tellthetruth', 'com.linecorp.b612.android'].contains(app.packageName) ?
//                      ListTile(
//                        leading: app is ApplicationWithIcon
//                            ? CircleAvatar(
//                          backgroundImage: MemoryImage(app.icon),
//                          backgroundColor: Colors.white,
//                        )
//                            : null,
//                        onTap: () => {
//
//                        initPlatformState(app.packageName)
////                          print(app.packageName)
//                        },
//                        title: Text("${app.appName} (${app.packageName})"),
////                        subtitle: Text('Version: ${app.versionName}\n'
////                            'System app: ${app.systemApp}\n'
////                            'APK file path: ${app.apkFilePath}\n'
////                            'Data dir : ${app.dataDir}\n'
////                            'Installed: ${DateTime.fromMillisecondsSinceEpoch(app.installTimeMilis).toString()}\n'
////                            'Updated: ${DateTime.fromMillisecondsSinceEpoch(app.updateTimeMilis).toString()}'),
//                      ),
////                          : Container(height: 0, width: 0,),
//                      Divider(
//                        height: 1.0,
//                      )
//                    ],
//                  );
//                },
//                itemCount: apps.length);
//          }
//        });
//  }
//}
