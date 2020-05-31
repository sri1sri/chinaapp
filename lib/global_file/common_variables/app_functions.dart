import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void GoToPage(BuildContext context, Widget page, bool clearStack) {

  !clearStack ?
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  ) :
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
      page), (Route<dynamic> route) => false);

//  Navigator.of(context).push(
//    MaterialPageRoute<void>(
//      fullscreenDialog: true,
//      builder: (context) => page,
//    ),
//  );
}

String USER_ID;
String USER_NAME = "buddy";
String USER_GENDER;
String USER_EMAIL;
String USER_QUESTION_COUNT = '0';
String USER_POINTS = '0';
String USER_DEVICE_TOKEN;

List<String> USER_GANG_NAMES = [];
List<String> USER_GANG_ID = [];
List<String> USER_GANG_NOTIFICATION_TOKENS = [];

//ImageSource IMAGE_SOURCE = ImageSource.gallery;
Size SCREEN_SIZE;
double IPHONE_11_PRO_MAX_HEIGHT = 896;
double IPHONE_11_PRO_MAX_Width = 414;

String maleIcon = 'https://assets6.lottiefiles.com/packages/lf20_bRHk7X.json';
String femaleIcon = 'https://assets6.lottiefiles.com/packages/lf20_4iPre3.json';

String DEVICE_TOKEN = '0';

List<String> GOODMORNINGMSG = ["3 steps to have a great morning, open your eyes, take a deep breath and go back to sleep.",
"With you in my life, I don’t throw the alarm clock at the wall anymore because I can’t wait to get up."
"I just wanted you to know how much I care for you. You’re always in my thoughts.",
"Just a note to connect with you, to tide me over until I see you today. Then both our days will be great.",
"Every morning reminds me of all the wrong dreams I had been chasing all my life until I found the right one",
  "A smile to start your day… A prayer to bless your way… A song to lighten your burden … A message to wish you good day … ",
"I may not be able to whisper sweet nothings into your ear at night, but I can type them to you in the morning!",
"Dreaming big is great but sleeping big is not. So, good morning and wake up!",
"Hello, my beautiful! You were the first thing to come to my mind as I woke up this morning.",
"Sending you a little box of sunshine to brighten your day as you always brighten mine."];


List<String> GOODNIGHTMSG = ["I can’t wait to see you in the morning.",
"Just wanted to let you know I’m thinking of you before I go to bed.",
"Having you in my life now makes me want this every day.",
"About to go to sleep and I’m thinking of you.",
  "There are 7 billion people in the world and you’re still the only one I want to hear from before I go to bed",
  "I never feel apart from you as long as you’re in my heart.",
  "I feel optimistic having you in my life.",
  "These are the only 8 hours I won’t get to hear from you. Have a wonderful sleep.",
  "“Can’t wait to be with you again.",
  "I’m excited for tomorrow to come, knowing that I’ll get to see you."
];


String getDateTime(int timestamp) {
  var format = new DateFormat('dd MMM yyyy, hh:mm a');
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  return format.format(date);
}

String getDate(int timestamp) {
  var format = new DateFormat('dd MMMM, yyyy');
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  return format.format(date);
}

String getTime(int timestamp) {
  var format = new DateFormat('hh:mm a');
  var date = new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  return timestamp == 0 ? '--' : format.format(date);
}


double getDynamicHeight( double height,){
  double actualHeightPercentage = height/IPHONE_11_PRO_MAX_HEIGHT;
  double dynamicHeight = actualHeightPercentage * SCREEN_SIZE.height;

  return dynamicHeight;
}

double getDynamicWidth( double width){
  double actualHeightPercentage = width/IPHONE_11_PRO_MAX_Width;
  double dynamicWidth = actualHeightPercentage * SCREEN_SIZE.width;

  return dynamicWidth;
}

double getDynamicTextSize(double size){
  double actualSizePercentage = size/IPHONE_11_PRO_MAX_Width;
  double dynamicTextSize = actualSizePercentage * SCREEN_SIZE.width;

  return dynamicTextSize;
}

List<int> convertSeconds(int seconds) {
  double sec = seconds.toDouble();
  double min;
  double hours;
  double secondsAfterHours;
  double secondsAfterMinutes;

  secondsAfterHours = sec%3600;

  hours = (sec - secondsAfterHours)/3600;

  secondsAfterMinutes = secondsAfterHours%60;

  min = (secondsAfterHours - secondsAfterMinutes)/60;

  sec = secondsAfterMinutes;

  return [hours.toInt(), min.toInt(), sec.toInt() ];
}

String greeting() {
  var hour = DateTime.now().hour;

  if (hour >= 6 && hour < 12) {
    return 'Good Morning';
  }
  if (hour >= 12 && hour < 16) {
    return 'Good Afternoon';
  }
  if (hour >= 16 && hour < 21) {
    return 'Good Evening';
  }
  return 'Good Night';
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}


//List<String> CONTACT_NUMBERS = new List();
//
//  getAllContacts() async {
//  await Contacts.streamContacts().forEach((contact) {
//    contact.phones.forEach((phone){
//      String spaceRmoved = phone.value.replaceAll(" ", "");
//      String con = spaceRmoved.replaceAll("-", "");
//      if(con.length>10){
//        String onlycon = con.replaceAll(new RegExp(r'[^\w\s]+'),'');
//
//        if(!CONTACT_NUMBERS.contains(onlycon)){
//          CONTACT_NUMBERS.add(onlycon);
//        }
//      }
//    });
//
//  }).whenComplete((){
//    return CONTACT_NUMBERS;
////      print('contacts ${ContactNumber}');
////      setState(() {
////
////      });
//  });
//}


//void customAlertBox(BuildContext context, String title, String description){
//  showDialog(
//      context: context,
//      builder: (_) => NetworkGiffyDialog(
//        key: Key("NetworkDialog"),
//        image: Image.network("https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
//          fit: BoxFit.cover,
//        ),
//        entryAnimation: EntryAnimation.TOP_LEFT,
//        title: Text(
//          title,
//          textAlign: TextAlign.center,
//          style: TextStyle(
//              fontSize: 22.0, fontWeight: FontWeight.w600),
//        ),
//        description: Text(
//          description,
//          textAlign: TextAlign.center,
//        ),
//        onlyOkButton: true,
//        onOkButtonPressed: (){
//          Navigator.of(context).pop();
//        },
//      ));
//}



