import 'package:chinaapp/constant.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  var _name;
//  var _description;
  var _image;
  final VoidCallback onPressed;

  AppCard(this._name, this._image, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xff4B7FFB).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: _image,
            title: Text(
              _name,
              style: TextStyle(
                color: kTitleTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
//
            trailing: IconButton(
              icon: Icon(Icons.delete,size: 30,color: kTitleTextColor.withOpacity(0.9),),
              onPressed: (){
                    onPressed();
              },
            ),
          ),
        ),
      ),
    );
  }
}
