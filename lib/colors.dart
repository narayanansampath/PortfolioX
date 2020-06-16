import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

mixin Coolors {
  static const Color primaryColor = Color(0xff252733);
  static const Color secondaryColor = Color(0xff333645);
  static Map<int, Color> colorCodes = {
    50: Color.fromRGBO(147, 205, 72, .1),
    100: Color.fromRGBO(147, 205, 72, .2),
    200: Color.fromRGBO(147, 205, 72, .3),
    300: Color.fromRGBO(147, 205, 72, .4),
    400: Color.fromRGBO(147, 205, 72, .5),
    500: Color.fromRGBO(147, 205, 72, .6),
    600: Color.fromRGBO(147, 205, 72, .7),
    700: Color.fromRGBO(147, 205, 72, .8),
    800: Color.fromRGBO(147, 205, 72, .9),
    900: Color.fromRGBO(147, 205, 72, 1),
  };
  static MaterialColor customColor = MaterialColor(0xff333645, colorCodes);
  // static const Color accentColor = Color(0xff813362);
  static Color accentColor = Vx.purple400;
  static List<Color> colors = [
    Vx.green400,
    Vx.yellow400,
    Vx.blue400,
    Vx.red400,
    Vx.teal400,
    Vx.orange400,
    Vx.pink400,
    Vx.purple400,
  ];
}
