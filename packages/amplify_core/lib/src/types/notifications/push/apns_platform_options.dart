// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class ApnsPlatformOptions with AWSDebuggable {
  String? subtitle;

  ApnsPlatformOptions({this.subtitle});

  @override
  String toString() {
    return 'ApnsPlatformOptions{subtitle: $subtitle}';
  }

  @override
  String get runtimeTypeName => 'ApnsPlatformOptions';
}
