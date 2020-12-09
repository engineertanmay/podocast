import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:three_page_design/core/share_widgets/featured_class.dart';
import 'package:three_page_design/getData.dart';
import 'package:three_page_design/item_design.dart';
import 'package:three_page_design/view/second_page.dart';
import 'package:three_page_design/view/slider_widget.dart';

class FirstPageClass extends StatefulWidget {
  @override
  _FirstPageClassState createState() => _FirstPageClassState();
}

class _FirstPageClassState extends State<FirstPageClass> {
  void doSomethigng() {
    setState(() {
      //update somehting
    });
  }

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
              itemCount: GetData.profileList.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(SeconPageClass());
                  },
                  child: ItemDesign.getItemDesign(
                    imagePath: GetData.profileList[index].assetImgPath,
                    projectName: GetData.profileList[index].projectName,
                    postTime: GetData.profileList[index].postTime,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
