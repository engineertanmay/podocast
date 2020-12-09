import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:three_page_design/core/constants/color_constant.dart';
import 'package:three_page_design/test_class.dart';
import 'package:three_page_design/theme/themes.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstPageClass(),
      theme: Themes.light,
      darkTheme: Themes.dark,
      // home: ThirdHomePageClass(),
    );
  }
}
