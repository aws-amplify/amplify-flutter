// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
