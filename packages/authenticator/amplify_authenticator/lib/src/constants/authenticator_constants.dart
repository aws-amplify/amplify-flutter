// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

class AuthenticatorContainerConstants {
  const AuthenticatorContainerConstants._();

  // container constraints
  static const double smallWidth = 320;

  static const double mediumWidth = 460;

  // mobile breakpoint
  static const double smallView = 480;
  static const double smallViewHeight = 960;
  // tablet breakpoint
  static const double mediumView = 672;

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

class FormFieldConstants {
  const FormFieldConstants._();

  static const marginBottom = 20.0;

  static const gap = 8.0;
}

class AuthenticatorButtonConstants {
  const AuthenticatorButtonConstants._();

  static const double fontSize = 16;
  static const double textFontSize = 13;
  static const Color textColor = Color.fromRGBO(130, 130, 130, 1);
}
