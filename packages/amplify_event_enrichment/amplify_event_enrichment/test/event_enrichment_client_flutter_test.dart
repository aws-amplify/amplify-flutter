// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart' show Ok;
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _ThrowingDeviceMetadataProvider implements DeviceMetadataProvider {
  @override
  Future<DeviceMetadata> getDeviceMetadata() async =>
      throw StateError('provider failure');
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('EventEnrichmentClientFlutter.create', () {
    test('degrades gracefully when device metadata resolution fails', () async {
      // create() must not throw when a provider fails; it falls back to empty
      // device metadata and the client stays usable.
      final client = await EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: const SdkMetadata(
          name: 'amplify-flutter',
          version: '2.0.0',
        ),
        deviceMetadataProvider: _ThrowingDeviceMetadataProvider(),
      );
      addTearDown(client.close);

      final result = client.record('event');
      expect(result, isA<Ok<EnrichedEvent>>());
    });
  });
}
