// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class FcmPlatformOptions with AWSDebuggable {
  String? channelId;

  FcmPlatformOptions({this.channelId});

  @override
  String toString() {
    return 'FcmPlatformOptions{channelId: $channelId}';
  }

  @override
  String get runtimeTypeName => 'FcmPlatformOptions';
}
