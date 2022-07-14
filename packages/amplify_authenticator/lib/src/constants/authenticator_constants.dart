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

  // tablet breakpoint
  static const double mediumView = 672;

  // larger than tablet breakpoint
  static const double largeView = 900;

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
