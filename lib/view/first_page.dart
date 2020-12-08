import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'package:three_page_design/core/constants/string_constants.dart';
import 'package:three_page_design/core/share_widgets/featured_class.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:three_page_design/getData.dart';
import 'package:three_page_design/item_design.dart';
import 'package:three_page_design/view/slider_widget.dart';

class FirstPageClass extends StatefulWidget {
  @override
  _FirstPageClassState createState() => _FirstPageClassState();
}

class _FirstPageClassState extends State<FirstPageClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FeaturedClass.appbarClass(Icons.dehaze),
      body: Column(
            mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),

                // Featured widget area==========================================
                FeaturedClass.featured(captionName: "Featured"),
                SizedBox(
                  height: 20,
                ),
                //slider area design================================
                SliderClass.SlideWidget(),
                // slider bottom widget=============================
                FeaturedClass.featured(captionName: "Recently Added"),
                //item list widgets design =================================
                Flexible(
                  child: ListView.builder(
                    itemCount: getData.profileList.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context,index){
                      return ItemDesign.getItemDesign(
                          imagePath: getData.profileList[index].assetImgPath,
                          projectName: getData.profileList[index].projectName,
                          postTime:getData.profileList[index].postTime);
                      }
                  ),
                ),
                ],
          ),
    );
  }
}
