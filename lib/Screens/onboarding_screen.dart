import 'package:chinaapp/Screens/home_screen.dart';
import 'package:chinaapp/constant.dart';
import 'package:chinaapp/global_file/admobs.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:firebase_admob/firebase_admob.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_OnboardingScreen(),
    );
  }
}

class F_OnboardingScreen extends StatefulWidget {
  @override
  _F_OnboardingScreen createState() => _F_OnboardingScreen();
}

class _F_OnboardingScreen extends State<F_OnboardingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//    Ads.showBannerAd();
  }


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
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert,size: 30,color: kTitleTextColor,),
            onPressed: (){

            },
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
//            Align(
//              alignment: Alignment.bottomCenter,
//              child: Image.asset(
//                'assets/images/onboarding_illustration.png',
//                width: MediaQuery.of(context).size.width,
//                fit: BoxFit.fitWidth,
//              ),
//            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 10,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadingDuration: Duration(seconds: 1),
                      slidingCurve: Curves.easeInCirc,
                      child:  Text(
                        'Remove China Apps On\nYour Device',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: kTitleTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadingDuration: Duration(seconds: 1),
                      slidingCurve: Curves.easeInCirc,
                      child: Text(
                        'Click on the "Scan Now" to find installed\nChina Apps in your system.',
                        style: TextStyle(
                          fontSize: 16,
                          color: kTitleTextColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DelayedDisplay(
                      delay: Duration(seconds: 1),
                      fadingDuration: Duration(seconds: 1),
                      slidingCurve: Curves.easeInCirc,
                      child:  MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        color: kOrangeColor,
                        padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Scan Now',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
//                    DelayedDisplay(
//                      delay: Duration(seconds: 1),
//                      fadingDuration: Duration(seconds: 1),
//                      slidingCurve: Curves.easeInCirc,
//                      child:   Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: [
//                          Column(
//                            children: [
//                              Text(
//                                'B',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                              Text(
//                                'A',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                              Text(
//                                'N',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                              SizedBox(height: 20,),
//                              Text(
//                                'N',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                              Text(
//                                'O',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                              Text(
//                                'W',
//                                style: TextStyle(
//                                  fontWeight: FontWeight.bold,
//                                  fontSize: 32,
//                                  color: kTitleTextColor,
//                                ),
//                              ),
//                            ],
//                          ),
////                          Lottie.network("https://assets4.lottiefiles.com/packages/lf20_qDJZag.json",height: 500,width: 500),
//                        ],
//                      ),
//                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
