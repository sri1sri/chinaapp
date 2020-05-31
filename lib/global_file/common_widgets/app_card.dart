import 'package:chinaapp/Screens/SuccessScreen.dart';
import 'package:chinaapp/constant.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  var _name;
  var _description;
//  var _image;
  var _bgColor;

  AppCard(this._name, this._description, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (context) => DetailScreen(_name, _description, _imageUrl),
//          ),
//        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _bgColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
//            leading: _image,
            title: Text(
              _name,
              style: TextStyle(
                color: kTitleTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              _description,
              style: TextStyle(
                color: kTitleTextColor.withOpacity(0.7),
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete,size: 30,color: kTitleTextColor.withOpacity(0.9),),
              onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccessScreen(),
          ),
        );
              },
            ),
          ),
        ),
      ),
    );
  }
}
