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

abstract class SocialIcons {
  static const _fontFamily = 'SocialIcons';
  static const _fontPackage = 'amplify_authenticator';

  static const IconData apple = IconData(
    0xe903,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData amazon = IconData(
    0xe902,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData google = IconData(
    0xe901,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData facebook = IconData(
    0xe900,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData apple1 = IconData(
    0xeabe,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData amazon1 = IconData(
    0xea87,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData google1 = IconData(
    0xea88,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );

  static const IconData facebook1 = IconData(
    0xea90,
    fontFamily: _fontFamily,
    fontPackage: _fontPackage,
  );
}
