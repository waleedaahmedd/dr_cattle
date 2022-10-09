import 'dart:ui';

import 'package:flutter/widgets.dart';

class CustomColors {
  static const Color color1 = Color.fromRGBO(25, 22, 84,1);
  static Color tintColor1 = const Color.fromRGBO(25, 22, 84, 0.5);

  static const Color color2 = Color.fromRGBO(65, 75, 88, 1);
  static Color tintColor2 = const Color.fromRGBO(65, 75, 88, 0.5);

  static Gradient gradientColor1 = const LinearGradient(colors: <Color>[Color.fromRGBO(25, 22, 84,1),
    Color.fromRGBO(67, 198, 172,1),]);

  static LinearGradient linearGradient1 = const LinearGradient(colors: <Color>[Color.fromRGBO(25, 22, 84,1),
    Color.fromRGBO(67, 198, 172,1),]);
}
