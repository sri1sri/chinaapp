import 'dart:ui';

import 'package:chinaapp/Screens/home_screen.dart';
import 'package:chinaapp/constant.dart';
import 'package:chinaapp/global_file/common_variables/app_functions.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:overlay_container/overlay_container.dart';
import 'package:social_share/social_share.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool _dropdownShown = false;
  void _toggleDropdown() {
    setState(() {
      _dropdownShown = !_dropdownShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(window.physicalSize.width);
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
            onPressed: _toggleDropdown,
          ),
          OverlayContainer(
            show: _dropdownShown,
            position: OverlayContainerPosition(
              -220,
              -50,
            ),
            child: Container(
              height: getDynamicHeight(200),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 1,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      _toggleDropdown();
                      showContactUsDialog(context);
                    },
                    child: Row(
                      children: [
                        Image.network(
                          "https://cdn4.iconfinder.com/data/icons/seo-web-3-1/128/Vigor_Contact-info-us-email-512.png",
                          height: getDynamicHeight(40),
                          width: getDynamicWidth(40),
                        ),
                        SizedBox(
                          width:getDynamicWidth(15),
                        ),
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTitleTextColor,
                            fontSize: getDynamicTextSize(18),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: getDynamicHeight(20),),
                  GestureDetector(
                    onTap: () {
                      _toggleDropdown();
                      showPrivacyPolicyDialog(context);
                    },
                    child: Row(
                      children: [
                        Image.network(
                          "https://cdn2.iconfinder.com/data/icons/market-research-wildberry-vol-2/256/Privacy_Policy-512.png",
                          height: getDynamicHeight(40),
                          width: getDynamicWidth(40),
                        ),
                        SizedBox(
                          width:getDynamicWidth(15),
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTitleTextColor,
                            fontSize: getDynamicTextSize(18),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: getDynamicHeight(20),),
                  GestureDetector(
                    onTap: () {
                      _toggleDropdown();
                      SocialShare.shareWhatsapp(
                          "I want you delete all the China Apps! Please install this app from Android: https://play.google.com/store/apps/details?id=com.kondasri.tellthetruth");
                    },
                    child: Row(
                      children: [
                        Image.network(
                          "https://cdn4.iconfinder.com/data/icons/materia-flat-social-free/24/038_026_share_link_friends_android_material-512.png",
                          height: getDynamicHeight(40),
                          width: getDynamicWidth(40),
                        ),
                        SizedBox(
                          width:getDynamicWidth(15),
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTitleTextColor,
                            fontSize: getDynamicTextSize(18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                        fontSize: getDynamicTextSize(32),
                        color: kTitleTextColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getDynamicHeight(20),
                  ),
                  DelayedDisplay(
                    delay: Duration(seconds: 1),
                    fadingDuration: Duration(seconds: 1),
                    slidingCurve: Curves.easeInCirc,
                    child: Text(
                      'Click on the "Scan Now" to find installed\nChina Apps in your system.',
                      style: TextStyle(
                        fontSize: getDynamicTextSize(16),
                        color: kTitleTextColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getDynamicHeight(20),
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
                          fontSize: getDynamicTextSize(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(seconds: 1),
            fadingDuration: Duration(seconds: 1),
            slidingCurve: Curves.easeInCirc,
            child: Lottie.asset("images/intro.json",height: 500,width: 500),
          ),
          DelayedDisplay(
            delay: Duration(seconds: 1),
            fadingDuration: Duration(seconds: 1),
            slidingCurve: Curves.easeInCirc,
            child:  Text(
              "Let's Ban It",
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
        ],
      ),
    );
  }
}

void showContactUsDialog(BuildContext context) {
  Dialog fancyDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 250.0,
      width: 300.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                SizedBox(height: 100,),
                Text(
                  "For any queries please contact us",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTitleTextColor,
                  fontSize: 16,
                ),
                  // style: smallTextStyleDark,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          onTap: () {
                            customLaunch('mailto:kondasri98@yahoo.com?Subject=Query%20regarding%20application.&body=Write%20your%20query%20here.%20');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kOrangeColor,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.mail,color: kOrangeColor,),
                                Center(
                                  child: Text("kondasri98@yahoo.com",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTitleTextColor,
                                    fontSize: 16,
                                  ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: kTitleTextColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn4.iconfinder.com/data/icons/seo-web-3-1/128/Vigor_Contact-info-us-email-512.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width:15,
                  ),
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    width:15,
                  ),
                ],
              ),
            ),
          ),
          Align(
            // These values are based on trial & error method
            alignment: Alignment(1.05, -1.05),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => fancyDialog);
}
void showPrivacyPolicyDialog(BuildContext context) {
  Dialog fancyDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: MediaQuery.of(context).size.height/1.2,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.2,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  _Notificationcard("THIRD PARTY SERVICES","This App will not use any third party payment processor to accept payments when you use the application. Such third party processor's use of your personal information is not suppored and managed by their privacy policy. For these service providers, This App recommends that you read their privacy policy to better understand how they use your personal information. "),
                  SizedBox(height: 10,),
                  _Notificationcard("DISCLAIMER","This is committed to honoring the privacy of its customers and visitors. Details which you are provided will not sell or share your personal information with third party organizations other than in the ways listed in this Privacy Policy. It only collects some basic information to better their experience by communicating eachother, deleting the apps. This Privacy Policy applies to the entire Application : www.removechinaapps.com app."),
                  SizedBox(height: 10,),
                  _Notificationcard("SECURITY", "Remove China Apps – as a application hosted by Herms & Touth – stores all user information in a secure database protected by a variety of industry standard access controls. Secure passwords, SSL encryption, diskbased encryption, firewalls, and other measures are in place to help (Firebase) protect your data. However, no company, can fully eliminate security risks associated with the transmission of personal information through online transactions, and you do so at your own risk."),
                  SizedBox(height: 10,),
                  _Notificationcard("COOKIES","While navigating this application your web browser may use 'cookies' to analyze trends and track your movement to gather information about the site as a whole. app allows Firebase to use cookies for authentication, tracking user sessions, preferences, and movements around the site to understand the site's marketing and performance analytics. Users can control the use of cookies at the individual browser level. If you decide to reject cookies, it may limit your ability to use some features of the site."),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: kTitleTextColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn2.iconfinder.com/data/icons/market-research-wildberry-vol-2/256/Privacy_Policy-512.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width:15,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    width:15,
                  ),
                ],
              ),
            ),
          ),
          Align(
            // These values are based on trial & error method
            alignment: Alignment(1.05, -1.05),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
  showDialog(
      context: context, builder: (BuildContext context) => fancyDialog);
}

void customLaunch(command) async{
  if(await canLaunch(command)){
    await launch(command);

  }else{
    print('could not launch $command');
  }
}

Widget _Notificationcard(String title,String description)
{
  return Container(
    width: double.infinity,

    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTitleTextColor,
              fontSize: 16,
            ),

          ),
          SizedBox(height: 10,),
          Text(description,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: kSearchTextColor,
            ),)
        ],
      ),
    ),
  );

}
