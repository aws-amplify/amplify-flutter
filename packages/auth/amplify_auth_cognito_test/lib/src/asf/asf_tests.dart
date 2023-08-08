// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

final _logger = AWSLogger().createChild('ASF');

/// Tests that the subset of ASF values guaranteed across all platforms are present.
void runAsfDeviceInfoTests([DependencyManager Function()? getManager]) {
  test('ASFDeviceInfo', () async {
    final deviceInfo =
        getManager?.call().getOrCreate<ASFDeviceInfoCollector>() ??
            ASFDeviceInfoCollector();
    final contextData = await deviceInfo.getNativeContextData();
    _logger.debug('Got context data: $contextData');
    expect(
      contextData,
      isA<ASFContextData>()
          .having((d) => d.clientTimezone, 'clientTimezone', isNotNull)
          .having((d) => d.deviceLanguage, 'deviceLanguage', isNotNull)
          .having((d) => d.deviceName, 'deviceName', isNotNull)
          .having(
            (d) => d.deviceOsReleaseVersion,
            'deviceOsReleaseVersion',
            isNotNull,
          )
          .having((d) => d.screenHeightPixels, 'screenHeightPixels', isNotNull)
          .having((d) => d.screenWidthPixels, 'screenWidthPixels', isNotNull),
    );
  });
}
