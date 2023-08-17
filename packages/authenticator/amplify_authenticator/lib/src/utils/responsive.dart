// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Returns true if the current platform is mobile/tablets or web mobile.
bool isMobileOrWebMobile(BuildContext context) {
  final mobile = isMobile(context);
  final isWebMobile = kIsWeb && mobile;
  return isWebMobile || mobile;
}

/// Returns true if the current platform is mobile/tablets.
bool isMobile(BuildContext context) {
  final platform = Theme.of(context).platform;
  return platform == TargetPlatform.iOS || platform == TargetPlatform.android;
}
