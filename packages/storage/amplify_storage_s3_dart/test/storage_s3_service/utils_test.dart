// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_storage_s3_dart/src/storage_s3_service/storage_s3_service.dart';
import 'package:test/test.dart';

void main() {
  group('metadata encoding and decoding', () {
    const metadataOnClient = {
      'filename': 'sunny_day.jpg',
      'description': 'Today is a 🌞 晴天 😎',
      'owner': '悟空 Goku',
    };

    const metadataOnService = {
      'filename': 'sunny_day.jpg',
      'description': '?UTF-8?B?VG9kYXkgaXMgYSDwn4yeIOaZtOWkqSDwn5iO?=',
      'owner': '?UTF-8?B?5oKf56m6IEdva3U=?=',
    };

    test('encodeMetadata()', () {
      expect(encodeMetadata(metadataOnClient), equals(metadataOnService));
    });

    test('decodeMetadata()', () {
      expect(decodeMetadata(metadataOnService), equals(metadataOnClient));
    });
  });
}
