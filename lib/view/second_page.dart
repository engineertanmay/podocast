import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/string_constants.dart';
import 'package:three_page_design/core/share_widgets/featured_class.dart';
import 'package:three_page_design/view/secon_page/get_item_data_list.dart';
import 'package:three_page_design/view/secon_page/item_property_class.dart';

class SeconPageClass extends StatefulWidget {
  @override
  _SeconPageClassState createState() => _SeconPageClassState();
}

class _SeconPageClassState extends State<SeconPageClass> {
List<String> headerList = ["Lessons","Revews","About"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar widget design=============================
      appBar: FeaturedClass.appbarClass(Icons.arrow_back),
      body: SafeArea(
        child: Column(
          children: [
            // top banner widget design================
            Container(
              child: Image.asset(StringConstants.slide1),
            ),
            SizedBox(
              height: 20,
            ),
            // horizontal featured and icon widget design========
            FeaturedClass.featured(
                captionName: "Quiqe wireframing in \n Sketch and XD"),
            SizedBox(height: 15,),

            // header horizontal page menu list==============
            Container(
            height: 100,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: headerList.length,
                itemBuilder: (context,index){
                  return Container(
                    width: 120,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(headerList[index],style: TextStyle(fontSize: 18),),
                  );
                },
              ),
            ),
            //item list widget design==============
            Expanded(
                child: ListView.builder(
                  itemCount: getItemDataClass.itemList.length,
                  itemBuilder: (context,index){
                  return FeaturedClass.itemCardDesign(index);
                  },
                      ),
                    ),
                    ],
    ),
    ),
    );
}
}
