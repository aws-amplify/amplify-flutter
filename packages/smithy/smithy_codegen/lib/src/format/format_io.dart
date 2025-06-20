// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';

/// Formats Dart source code.
///
/// This is a no-op on Web since `dart_style` (`analyzer`) is not supported.
String format(String source) {
  final formatter = DartFormatter(languageVersion: Version(3, 8, 0));
  return formatter.format(source);
}
