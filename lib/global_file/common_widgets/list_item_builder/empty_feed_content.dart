import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:lottie/lottie.dart';
import 'package:chinaapp/global_file/common_variables/app_fonts.dart';
import 'package:chinaapp/global_file/common_variables/app_functions.dart';

class EmptyFeedContent extends StatelessWidget {

  final String title;
  final String message;

  const EmptyFeedContent({Key key, this.title = 'Emptyyyyy!!!', this.message ='No items has been added.'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Lottie.network("https://assets4.lottiefiles.com/private_files/lf30_YWyaYi.json",height: getDynamicHeight(300),width: getDynamicWidth(300)),
              GradientText(
                'You don\'t have any gangs to display.',
                style: foregroundTextStyleDark,
                textAlign: TextAlign.center,
                gradient: LinearGradient(
                  colors: [
                    Color(0XffFD8B1F),
                    Color(0XffD152E0),
                    Color(0Xff30D0DB),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              SizedBox(height: getDynamicHeight(20.0),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How to create gang?', style: mediumTextStyleDark),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Go to + tab below.', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Click on Create new gang & have fun.', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Enter your gang name & icon.', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - You will be providing with gang code.', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(40.0),),


                  SizedBox(height: getDynamicHeight(20.0),),
                  Text('How to know gang codes?', style: mediumTextStyleDark),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Select gang title.', style: smallTextStyleMedium,),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - After navigating to next screen, On top right ', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Enter you gang code. That\'s it..!!!', style: smallTextStyleMedium,),
                  SizedBox(height: getDynamicHeight(40.0),),

                  Text('How to join gang?', style: mediumTextStyleDark),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Go to + tab below.', style: smallTextStyleMedium,),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Click on Join your gang.', style: smallTextStyleMedium),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Text('     - Enter you gang code. That\'s it..!!!', style: smallTextStyleMedium,),
                  SizedBox(height: getDynamicHeight(40.0),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
