// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut:
        'lib/src/legacy_native_data_provider/pigeon_legacy_data_provider.android.g.dart',
    javaOut:
        'android/src/main/java/com/amazonaws/amplify/amplify_analytics_pinpoint/amplify_analytics_pinpoint/Messages.java',
    javaOptions: JavaOptions(
      className: 'Messages',
      package:
          'com.amazonaws.amplify.amplify_analytics_pinpoint.amplify_analytics_pinpoint',
    ),
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
@HostApi()
abstract class PigeonLegacyDataProvider {
  @async
  String? getEndpointId(String pinpointAppId);
}
