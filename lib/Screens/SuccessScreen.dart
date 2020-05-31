import 'package:chinaapp/constant.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: F_SuccessScreen(),
    );
  }
}

class F_SuccessScreen extends StatefulWidget {
  @override
  _F_SuccessScreen createState() => _F_SuccessScreen();
}

class _F_SuccessScreen extends State<F_SuccessScreen> {
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
            icon: Icon(Icons.arrow_back_ios,size: 30,color: kTitleTextColor,),
            onPressed: (){
              Navigator.pop(context, true);
            },
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  fadingDuration: Duration(seconds: 1),
                  slidingCurve: Curves.easeInCirc,
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network("https://assets3.lottiefiles.com/packages/lf20_rlWIJp.json",height: 400,width: 400),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  fadingDuration: Duration(seconds: 1),
                  slidingCurve: Curves.easeInCirc,
                  child:   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'China Apps Deleted Successfully.',
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
                  delay: Duration(seconds: 1),
                  fadingDuration: Duration(seconds: 1),
                  slidingCurve: Curves.easeInCirc,
                  child:  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'You are awesome, No China Apps found now in your system.',
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
              ],
            ),
          ),
        ),
    );
  }
}
