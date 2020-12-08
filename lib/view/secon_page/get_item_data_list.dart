import 'package:three_page_design/view/secon_page/item_property_class.dart';

class getItemDataClass {
 static ItemPropertyClass itemPropertyClass1 = ItemPropertyClass(
      captionText: "Completed",
      title: "What is Wireframing?",
      subTitle: "Episode 1 | 15:53 mins");
  static ItemPropertyClass itemPropertyClass2 = ItemPropertyClass(
      captionText: "Watch now",
      title: "Getting started with Sketch",
      subTitle: "Episode 2 | 17:23 mins");

  static List<ItemPropertyClass> itemList = [itemPropertyClass1,itemPropertyClass2];
}
