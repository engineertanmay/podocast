import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/string_constants.dart';
import 'package:three_page_design/core/text_style.dart';
import 'package:three_page_design/list_constrator.dart';

class getData {
  // String listTileLeadingImg;
  // String title;
  // String subTitle;
  //first page itemlist design==================================
  static ListConstractor listConstractor1 = ListConstractor(
      assetImgPath: "assets/images/item1.png",
      projectName: "Project Management",
      postTime: "3 week | 16 Episode");
  static ListConstractor listConstractor2 = ListConstractor(
      assetImgPath: "assets/images/item2.png",
      projectName: "IT & Cloud Computing",
      postTime: "3 week | 16 Episode");
  static ListConstractor listConstractor3 = ListConstractor(
      assetImgPath: "assets/images/item3.png",
      projectName: "Big Data & Scrapping",
      postTime: "3 week | 16 Episode");
  static ListConstractor listConstractor4 = ListConstractor(
      assetImgPath: "assets/images/item4.png",
      projectName: "Theoru of colors",
      postTime: "3 week | 16 Episode");
  static ListConstractor listConstractor5 = ListConstractor(
      assetImgPath: "assets/images/item5.png",
      projectName: "Project Management",
      postTime: "3 week | 16 Episode");
  static List<ListConstractor> profileList = [
    listConstractor1,
    listConstractor2,
    listConstractor3,
    listConstractor4,
    listConstractor5,
  ];

  static Widget ListTileWidget(String listTileLeadingImg,String title,String subTitle){
    return ListTile(
      // leading: CircleAvatar(
      //   backgroundImage: Image.file(listTileLeadingImg),
      //   child: GestureDetector(onTap: () {}),
      // ),
      leading: Container(
          child: CircleAvatar(
            backgroundColor: Colors.white,
              child: Image.asset(listTileLeadingImg))),
      title: Text(title,style: TextStyleClass.mediumHkTextStyle(
          25, Color(0xff151C2A),),),
      subtitle: Text(subTitle),
    );


  }
  //
}