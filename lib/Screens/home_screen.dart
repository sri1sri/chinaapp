import 'package:chinaapp/Screens/SuccessScreen.dart';
import 'package:chinaapp/constant.dart';
import 'package:chinaapp/global_file/common_variables/app_functions.dart';
import 'package:chinaapp/global_file/common_widgets/app_card.dart';
import 'package:chinaapp/global_file/common_widgets/offline_widgets/offline_widget.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
  @override
  Widget build(BuildContext context) {
    return offlineWidget( context );
  }

  Widget offlineWidget(BuildContext context) {
    return CustomOfflineWidget(
      onlineChild: Padding(
        padding: const EdgeInsets.fromLTRB( 0, 0, 0, 0 ),
        child: Scaffold(
          body: _buildContent( context ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios,size: 30,color: kTitleTextColor,),
                onPressed: (){
                  Navigator.pop(context, true);
                },
              ),
              DelayedDisplay(
                delay: Duration(seconds: 1),
                fadingDuration: Duration(seconds: 1),
                slidingCurve: Curves.easeInCirc,
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network("https://assets4.lottiefiles.com/private_files/lf30_YWyaYi.json",height: 200,width: 200),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DelayedDisplay(
                delay: Duration(seconds: 2),
                fadingDuration: Duration(seconds: 2),
                slidingCurve: Curves.easeInCirc,
                child:    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'China Apps Found in\nyour System.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: kTitleTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DelayedDisplay(
                delay: Duration(seconds: 3),
                fadingDuration: Duration(seconds: 3),
                slidingCurve: Curves.easeInCirc,
                child:   Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'The Apps which you are detelting will be permenently removed from your device.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: kSearchTextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              DelayedDisplay(
                delay: Duration(seconds: 4),
                fadingDuration: Duration(seconds: 4),
                slidingCurve: Curves.easeInCirc,
                child:   Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Apps which detected',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleTextColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DelayedDisplay(
                delay: Duration(seconds: 5),
                fadingDuration: Duration(seconds: 5),
                slidingCurve: Curves.easeInCirc,
                child:   buildAppList(),
              ),
            ],
          ),
        ),
      ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DelayedDisplay(
                delay: Duration(seconds: 6),
                fadingDuration: Duration(seconds: 6),
                slidingCurve: Curves.easeInCirc,
                child:   GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: kTitleTextColor,
                    ),
                    height: 40,
                    width: 200,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Remove",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kWhiteColor,
                          fontSize: 18,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

  buildAppList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          AppCard(
            'Facebook',
            'FaceBook.inc - Social',
            'https://cdn3.iconfinder.com/data/icons/capsocial-round/500/facebook-512.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'Instagram',
            'FaceBook.inc - Social',
            'https://cdn4.iconfinder.com/data/icons/social-media-2146/512/25_social-512.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'TickTock',
            'TikTok.inc - Social',
            'https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Tiktok-512.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'WhatsApp',
            'Whatsapp.inc - Social',
            'https://cdn2.iconfinder.com/data/icons/social-icons-33/128/WhatsApp-512.png',
            kGreenColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'Facebook',
            'FaceBook.inc - Social',
            'https://cdn3.iconfinder.com/data/icons/capsocial-round/500/facebook-512.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'Instagram',
            'FaceBook.inc - Social',
            'https://cdn4.iconfinder.com/data/icons/social-media-2146/512/25_social-512.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'TickTock',
            'TikTok.inc - Social',
            'https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Tiktok-512.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          AppCard(
            'WhatsApp',
            'Whatsapp.inc - Social',
            'https://cdn2.iconfinder.com/data/icons/social-icons-33/128/WhatsApp-512.png',
            kGreenColor,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
