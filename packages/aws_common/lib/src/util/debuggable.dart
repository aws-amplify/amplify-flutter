// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// An object whose properties can be introspected and thus, printed safely to
/// the console.
///
/// Developers should use [safePrint] where possible to avoid leaking sensitive
/// information in release builds. However, this mixin provides an extra
/// safeguard against accidental leakage by explicitly denoting debug-friendly
/// [toString] behavior.
mixin AWSDebuggable on Object {
  /// The string value of [runtimeType], saving a runtime lookup and preventing
  /// obfuscation during web compilation.
  String get runtimeTypeName;

  @override
  String toString() {
    if (this is AWSSerializable) {
      return '$runtimeTypeName ${prettyPrintJson(this)}';
    }
    if (this is AWSEquatable) {
      return '$runtimeTypeName ${(this as AWSEquatable).props}';
    }
    return 'Instance of $runtimeTypeName';
  }
}
