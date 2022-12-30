// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/platform/platform.dart';
import 'package:test/test.dart';

void main() {
  group('User-Agent', () {
    test('Chrome', testOn: 'chrome', () {
      expect(osIdentifier, matches(RegExp(r'^Chrome/[\d\.]+$')));
    });

    test('Firefox', testOn: 'firefox', () {
      expect(osIdentifier, matches(RegExp(r'^Firefox/[\d\.]+$')));
    });

    test('Safari', testOn: 'safari', () {
      expect(osIdentifier, matches(RegExp(r'^Safari/[\d\.]+$')));
    });

    test('Windows', testOn: 'windows', () {
      expect(osIdentifier, matches(RegExp(r'^windows/[\d\.]+$')));
    });

    test('macOS', testOn: 'mac-os', () {
      expect(osIdentifier, matches(RegExp(r'^macos/[\d\.]+$')));
    });

    test('Linux', testOn: 'linux', () {
      expect(osIdentifier, matches(RegExp(r'^linux/[\d\.]+$')));
    });
  });
}
