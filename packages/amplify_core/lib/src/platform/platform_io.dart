// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

final RegExp _versionRegex = RegExp(r'[\d\.]+');

/// {@macro amplify_core.platform.os_identifier}
String get osIdentifier {
  final os = Platform.operatingSystem;
  final osVersion =
      _versionRegex.firstMatch(Platform.operatingSystemVersion)?.group(0) ??
          'Unknown';
  return '$os/$osVersion';
}
