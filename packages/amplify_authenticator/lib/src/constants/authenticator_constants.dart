/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:flutter/material.dart';

class AuthenticatorContainerConstants {
  const AuthenticatorContainerConstants._();

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

class FormFieldConstants {
  const FormFieldConstants._();

  static const marginBottom =
      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20);

  static const gap = EdgeInsets.only(bottom: 8);
}

class AuthenticatorButtonConstants {
  const AuthenticatorButtonConstants._();

  static const double fontSize = 16;
  static const double textFontSize = 13;
  static const Color textColor = Color.fromRGBO(130, 130, 130, 1);
}
