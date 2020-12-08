import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/string_constants.dart';
import 'package:three_page_design/core/share_widgets/featured_class.dart';
import 'package:three_page_design/getData.dart';
import 'package:three_page_design/item_design.dart';
class ThirdHomePageClass extends StatefulWidget {
  @override
  _ThirdHomePageClassState createState() => _ThirdHomePageClassState();
}

class _ThirdHomePageClassState extends State<ThirdHomePageClass> {
   List<String> menuList = ["Lessons","About","Revews"];
   bool isLessons = true;
   bool isAbout = false;
   bool isReviews = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar widget design=======================
      appBar: FeaturedClass.appbarClass(Icons.arrow_back),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // featured widget design=========================
            FeaturedClass.featured(
                captionName: "Quiqe wireframing in \n Sketch and XD"),
          SizedBox(height: 10,),

          //horizontal menubar list item widget design===========
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 30,),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: menuList.length,
                  itemBuilder: (context,index){
                  if(index==0 && isLessons){
                    return Container(
                        width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(menuList[index]),
                      ),
                    );
                  }
                  if(index==1 && isAbout){
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Center(
                        child: Text(menuList[index]),
                      ),
                    );
                  }
                  if(index==2 && isReviews){
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red
                      ),
                      child: Center(
                        child: Text(menuList[index]),
                      ),
                    );
                  }
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      width: MediaQuery.of(context).size.width*.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            if(index == 0){
                              setState(() {
                                isLessons = true;
                                isReviews = false;
                                isAbout = false;
                              });
                            }
                            else if(index ==1){
                              setState(() {
                                isLessons = false;
                                isReviews = false;
                                isAbout = true;
                              });
                            }
                            else{
                              setState(() {
                                isLessons =false;
                                isReviews = true;
                                isAbout = false;
                              });
                            }
                          });
                        },

                          child: Center(
                            child: Text(menuList[index]),
                          ),

                      ),
                    );
                  }
                  ),
            ),
          // listTile widget area design============
              getData.ListTileWidget(StringConstants.imgListItmSrcStr,
                  "Dann Petty",
                  "Freelance Designer"),
            //paragraph widget area design====================
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child:Text(StringConstants.paragraph),
            ),
            SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
           margin: EdgeInsets.symmetric(horizontal: 20,),
           height: 20,
              decoration: BoxDecoration(
              ),
              child:Text("Courses of Dann",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Expanded(
              child:ListView.builder(
                itemCount: getData.profileList.length,
                  itemBuilder: (context,index){
                  return ItemDesign.getItemDesign(
                      imagePath: getData.profileList[index].assetImgPath,
                      projectName: getData.profileList[index].projectName,
                      postTime: getData.profileList[index].postTime);
                  }

            ),
            ),
          ],
        ),

      ),
      //
    );
  }
}
