import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'package:three_page_design/core/text_style.dart';

class ItemDesign{
  static Widget getItemDesign({@ required String imagePath,
    @required String projectName,
      @required String postTime}){
    return Container(
      decoration: BoxDecoration(
//        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
      height: 100,
      child: Row(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(imagePath,
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,horizontal: 20,
            ),
            child: Column(
              children: <Widget>[
                Text(projectName,
                  style: TextStyleClass.mediumHkTextStyle(16, ColorConstant.gTextColor),
                ),
                Text(postTime,style: TextStyleClass.mediumHkTextStyle(10, ColorConstant.gSubTextColor),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}