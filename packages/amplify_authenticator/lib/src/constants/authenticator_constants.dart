import 'package:flutter/material.dart';

///Authenticator Constants
abstract class AuthenticatorConstants {}

///Authenticator Container Constants
class AuthenticatorContainerConstants extends AuthenticatorConstants {
  ///small width
  static const double smallWidth = 320;

  ///medium width
  static const double mediumWidth = 460;

  /// land scape view
  static const double landScapeView = 672;

  /// title font size
  static const double titleFontSize = 18.4;

  /// title font weight
  static const FontWeight titleFontWeight = FontWeight.bold;

  /// padding
  static const padding = EdgeInsets.all(40);

  ///gap
  static const gap = EdgeInsets.only(bottom: 24);

  ///border radius
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(10));

  /// box shadow
  static BoxShadow boxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.15),
    spreadRadius: 1,
    offset: Offset(
      1,
      1,
    ),
  );
}

///Form Field Contstants
class FormFieldConstants extends AuthenticatorConstants {
  /// margin bottom
  static const marginBottom =
      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20);

  ///gap
  static const gap = EdgeInsets.only(bottom: 8);
}

/// authenticator button constants
class AuthenticatorButtonConstants extends AuthenticatorConstants {
  ///font size
  static const double fontSize = 16;
}
