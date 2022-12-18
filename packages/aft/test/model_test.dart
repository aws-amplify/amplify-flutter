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
    const proagation = VersionPropagation.minor;

    test('0-version', () {
      final version = Version(0, 1, 0);

      final patch = version.nextAmplifyVersion(VersionBumpType.patch);
      expect(patch, Version(0, 1, 0, build: '1'));
      expect(proagation.propagateToComponent(version, patch), false);

      final nextPatch = patch.nextAmplifyVersion(VersionBumpType.patch);
      expect(nextPatch, Version(0, 1, 0, build: '2'));
      expect(proagation.propagateToComponent(version, nextPatch), false);

      final nonBreaking =
          version.nextAmplifyVersion(VersionBumpType.nonBreaking);
      expect(nonBreaking, Version(0, 1, 1));
      expect(proagation.propagateToComponent(version, nonBreaking), false);

      final breaking = version.nextAmplifyVersion(VersionBumpType.breaking);
      expect(breaking, Version(0, 2, 0));
      expect(proagation.propagateToComponent(version, breaking), true);
    });

    test('pre-release (untagged)', () {
      final version = Version(1, 0, 0, pre: 'next.0');

      final patch = version.nextAmplifyVersion(VersionBumpType.patch);
      expect(
        patch,
        Version(1, 0, 0, pre: 'next.0', build: '1'),
      );
      expect(proagation.propagateToComponent(version, patch), false);

      final nonBreaking =
          version.nextAmplifyVersion(VersionBumpType.nonBreaking);
      expect(
        nonBreaking,
        Version(1, 0, 0, pre: 'next.0', build: '1'),
      );
      expect(proagation.propagateToComponent(version, nonBreaking), false);

      final breaking = version.nextAmplifyVersion(VersionBumpType.breaking);
      expect(
        breaking,
        Version(1, 0, 0, pre: 'next.1'),
      );
      expect(proagation.propagateToComponent(version, breaking), true);
    });

    test('pre-release (tagged)', () {
      final version = Version(1, 0, 0, pre: 'next.0', build: '1');

      final patch = version.nextAmplifyVersion(VersionBumpType.patch);
      expect(
        patch,
        Version(1, 0, 0, pre: 'next.0', build: '2'),
      );
      expect(proagation.propagateToComponent(version, patch), false);

      final nonBreaking =
          version.nextAmplifyVersion(VersionBumpType.nonBreaking);
      expect(
        nonBreaking,
        Version(1, 0, 0, pre: 'next.0', build: '2'),
      );
      expect(proagation.propagateToComponent(version, nonBreaking), false);

      final breaking = version.nextAmplifyVersion(VersionBumpType.breaking);
      expect(
        breaking,
        Version(1, 0, 0, pre: 'next.1'),
      );
      expect(proagation.propagateToComponent(version, breaking), true);
    });

    test('release', () {
      final version = Version(1, 0, 0);

      final patch = version.nextAmplifyVersion(VersionBumpType.patch);
      expect(patch, Version(1, 0, 1));
      expect(proagation.propagateToComponent(version, patch), false);

      final nonBreaking =
          version.nextAmplifyVersion(VersionBumpType.nonBreaking);
      expect(nonBreaking, Version(1, 1, 0));
      expect(proagation.propagateToComponent(version, nonBreaking), true);

      final breaking = version.nextAmplifyVersion(VersionBumpType.breaking);
      expect(breaking, Version(2, 0, 0));
      expect(proagation.propagateToComponent(version, breaking), true);
    });
  });
}
