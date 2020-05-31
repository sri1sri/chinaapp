import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:lottie/lottie.dart';
import 'package:chinaapp/global_file/common_variables/app_fonts.dart';
import 'package:chinaapp/global_file/common_variables/app_functions.dart';

class EmptyPolledContent extends StatelessWidget {

  final String title;
  final String message;

  const EmptyPolledContent({Key key, this.title = 'Emptyyyyy!!!', this.message ='No items has been added.'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Lottie.network("https://assets10.lottiefiles.com/packages/lf20_EHugAD.json",height: getDynamicHeight(300),width: getDynamicWidth(300)),
              GradientText(
                "No user's has revealed their identity.",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How to reveal indentity?', style: mediumTextStyleDark),
                  SizedBox(height: getDynamicHeight(10.0),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text('- Click on Answered anonymous, It will disable anonymous mode.', style: smallTextStyleMedium,),
                        SizedBox(height: getDynamicHeight(10.0),),
                        Text("- Click on ${USER_NAME}'s answer, It will enable anonymous mode.", style: smallTextStyleMedium),
                        SizedBox(height: getDynamicHeight(10.0),),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
