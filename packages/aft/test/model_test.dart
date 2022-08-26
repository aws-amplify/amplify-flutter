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

import 'package:aft/src/models.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

void main() {
  group('AmplifyVersion', () {
    test('0-version', () {
      final version = Version(0, 1, 0);
      expect(
        version.nextAmplifyVersion(isBreakingChange: false),
        Version(0, 1, 1),
      );
      expect(
        version.nextAmplifyVersion(isBreakingChange: true),
        Version(0, 2, 0),
      );
    });

    test('pre-release', () {
      var version = Version(1, 0, 0, pre: 'next.0');
      expect(
        version.nextAmplifyVersion(isBreakingChange: false),
        Version(1, 0, 0, pre: 'next.0', build: '1'),
      );
      expect(
        version.nextAmplifyVersion(isBreakingChange: true),
        Version(1, 0, 0, pre: 'next.1'),
      );

      version = Version(1, 0, 0, pre: 'next.0', build: '1');
      expect(
        version.nextAmplifyVersion(isBreakingChange: false),
        Version(1, 0, 0, pre: 'next.0', build: '2'),
      );
      expect(
        version.nextAmplifyVersion(isBreakingChange: true),
        Version(1, 0, 0, pre: 'next.1'),
      );
    });

    test('release', () {
      final version = Version(1, 0, 0);
      expect(
        version.nextAmplifyVersion(isBreakingChange: false),
        Version(1, 0, 1),
      );
      expect(
        version.nextAmplifyVersion(isBreakingChange: true),
        Version(1, 1, 0),
      );
    });
  });
}
