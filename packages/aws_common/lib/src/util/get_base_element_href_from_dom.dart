// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:html';

/// Returns the href attribute of the base element if it is present.
///
/// Based on [getBaseElementHrefFromDom](https://api.flutter.dev/flutter/flutter_web_plugins/getBaseElementHrefFromDom.html)
String? getBaseElementHrefFromDom() {
  return document.querySelector('base')?.getAttribute('href');
}
