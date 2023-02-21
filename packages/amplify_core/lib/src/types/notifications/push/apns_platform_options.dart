// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.push.apns_platform_options}
/// Holds APNS specific push notification options
/// {@endtemplate}
class ApnsPlatformOptions
    with AWSDebuggable, AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.push.apns_platform_options}
  ApnsPlatformOptions({this.subtitle});

  String? subtitle;

  @override
  String get runtimeTypeName => 'ApnsPlatformOptions';

  @override
  Map<String, Object?> toJson() => {
        'subTitle': subtitle,
      };
}
