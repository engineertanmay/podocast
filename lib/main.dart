import 'package:flutter/material.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'package:three_page_design/test_class.dart';
import 'package:three_page_design/view/first_page.dart';
import 'package:three_page_design/view/second_page.dart';
import 'package:three_page_design/view/third_homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         scaffoldBackgroundColor: ColorConstant.backgroundColor,
         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: FirstPageClass(),
       home: SeconPageClass(),
      // home: ThirdHomePageClass(),
    );
  }
}
