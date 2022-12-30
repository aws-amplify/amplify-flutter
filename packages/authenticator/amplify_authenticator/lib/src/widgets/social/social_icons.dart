// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

abstract class SocialIcons {
  static const _fontFamily = 'SocialIcons';
  static const _authenticatorPackage = 'amplify_authenticator';

  static const IconData apple = IconData(
    0xe903,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const IconData appleAlt = IconData(
    0xeabe,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const IconData amazon = IconData(
    0xe902,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const IconData amazonAlt = IconData(
    0xea87,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const Color amazonPrimaryColor = Color(0xffff9900);

  static const IconData google = IconData(
    0xe901,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const IconData googleAlt = IconData(
    0xea88,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static final Image googleLogo = Image.asset(
    'assets/social-buttons/google.png',
    package: _authenticatorPackage,
  );

  static const IconData facebook = IconData(
    0xea90,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const IconData facebookAlt = IconData(
    0xe900,
    fontFamily: _fontFamily,
    fontPackage: _authenticatorPackage,
  );

  static const Color facebookPrimaryColor = Color(0xff1877f2);
}
