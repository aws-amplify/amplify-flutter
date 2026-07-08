// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:test/test.dart';

void main() {
  group('PlatformDeviceMetadataProvider', () {
    // On the VM this exercises the dart:io resolver; on web the conditional
    // import selects the stub, which returns empty metadata. Either way the
    // default provider must resolve without throwing.
    test('resolves device metadata without throwing', () async {
      const provider = PlatformDeviceMetadataProvider();
      final metadata = await provider.getDeviceMetadata();
      expect(metadata, isA<DeviceMetadata>());
    });

    test('satisfies the DeviceMetadataProvider interface', () async {
      const DeviceMetadataProvider provider = PlatformDeviceMetadataProvider();
      expect(await provider.getDeviceMetadata(), isA<DeviceMetadata>());
    });
  });
}
