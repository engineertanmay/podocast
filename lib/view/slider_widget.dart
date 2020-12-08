import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/string_constants.dart';

class SliderClass{

  static Widget SlideWidget(){
    int _current = 0;
    List<String> slideList = [
      StringConstants.slide1,
      StringConstants.slide2,
      StringConstants.slide3
    ];
    return  Column(children: [
      CarouselSlider.builder(
        itemCount:slideList.length,
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16/9,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (BuildContext context, int itemIndex) =>
            Container(
              child: Image.asset(slideList[itemIndex],fit: BoxFit.fill,),
            ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: slideList.map((url) {
          int index = slideList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Color.fromRGBO(0, 0, 0, 0.9)
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}