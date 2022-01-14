// ignore_for_file: prefer_const_constructors

import 'package:facebook_web/screens/main_page.dart';
import 'package:facebook_web/utils/colors_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Facebook',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: ColorPalette.scaffoldGrey,
    ),
    // home: Home(),
    home: MainPage(),
  ));
}
