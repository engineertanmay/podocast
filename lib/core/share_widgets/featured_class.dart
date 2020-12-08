import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'package:three_page_design/core/constants/string_constants.dart';
import 'package:three_page_design/core/text_style.dart';
import 'package:three_page_design/view/secon_page/get_item_data_list.dart';

class FeaturedClass {
  //appbar widget design========================
  static Widget appbarClass(IconData icon) {
    return AppBar(
      elevation: 0,
      leading: Icon(
        icon,
        color: ColorConstant.iconColor,
      ),
      backgroundColor: ColorConstant.backgroundColor,
      actions: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.teal, width: 1.0, style: BorderStyle.solid),
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(StringConstants.imgBannerSrcStr))),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  //This is for caption widget
  static Widget featured({@required captionName}) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              captionName,
              style: TextStyleClass.captionTextStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }

// card design for itemlist into card
  static Widget itemCardDesign(int index) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(getItemDataClass.itemList[index].captionText),
              SizedBox(
                height: 20,
              ),
              Text(
                getItemDataClass.itemList[index].title,
                style: TextStyle(fontSize: 24,),
              ),
              Text(getItemDataClass.itemList[index].subTitle),
            ],
          ),
        ),
      ),
    );
  }
}
