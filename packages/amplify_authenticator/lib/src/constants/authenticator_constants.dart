import 'package:flutter/material.dart';

abstract class AuthenticatorConstants {}

class AuthenticatorContainerConstants extends AuthenticatorConstants {
  static const double smallWidth = 320;

  static const double mediumWidth = 460;

  static const double landScapeView = 672;

  static const double titleFontSize = 18.4;

  static const FontWeight titleFontWeight = FontWeight.bold;

  static const padding = 40.0;

  static const gap = 24.0;

  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(10));

  static const BoxShadow boxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.15),
    spreadRadius: 1,
    offset: Offset(
      1,
      1,
    ),
  );
}

class FormFieldConstants extends AuthenticatorConstants {
  static const marginBottom =
      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20);

  static const gap = EdgeInsets.only(bottom: 8);
}

class AuthenticatorButtonConstants extends AuthenticatorConstants {
  static const double fontSize = 16;
  static const double textFontSize = 13;
  static const Color textColor = Color.fromRGBO(130, 130, 130, 1);
}
