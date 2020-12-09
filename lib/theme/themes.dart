import 'package:flutter/material.dart';

class Themes {
  static ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.black),
  );

  static ThemeData dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blue,
    iconTheme: IconThemeData(color: Colors.white),
  );
}
