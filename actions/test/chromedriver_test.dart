// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/src/chromedriver/downloads.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

part 'chromedriver_test.g.dart';

@JsonLiteral('chrome_downloads.json')
Map<String, Object?> get testDownloads => _$testDownloadsJsonLiteral;

void main() {
  group('AllChromeDownloads', () {
    final downloads = AllChromeDownloads.fromJson(testDownloads);

    test('exact version exists in JSON', () {
      expect(
        downloads.chromeDriverUrl('117.0.5926.0', ChromePlatform.linux64),
        'https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/117.0.5926.0/linux64/chromedriver-linux64.zip',
      );
    });

    test('exact version is missing in JSON', () {
      expect(
        downloads.chromeDriverUrl('115.0.5790.114', ChromePlatform.linux64),
        'https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/115.0.5790.170/linux64/chromedriver-linux64.zip',
        reason: 'Should fallback to patch version',
      );
    });
  });
}
