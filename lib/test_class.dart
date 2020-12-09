import 'package:flutter/material.dart';
import 'package:three_page_design/core/share_widgets/featured_class.dart';
import 'package:three_page_design/getData.dart';
import 'package:three_page_design/item_design.dart';

class TestClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: FeaturedClass.itemCardDesign(0),
        ),
      ),
    );
  }
}
