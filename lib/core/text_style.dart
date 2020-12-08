import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'constants/string_constants.dart';

class TextStyleClass{
static TextStyle captionTextStyle = TextStyle(fontSize: 20,
    color:ColorConstant.gTextColor,
    fontFamily: StringConstants.hkGrateskBold);
static TextStyle mediumHkTextStyle(double fontSize,Color color){
  TextStyle(fontSize:fontSize,
      color: color,
      fontFamily: StringConstants.hkGrateskMedium);
}
}