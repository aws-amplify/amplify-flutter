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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3_dart/amplify_storage_s3_dart.dart';
import 'package:test/test.dart';

void main() {
  group('PassThroughPrefixResolver', () {
    const prefixResolver = PassThroughPrefixResolver();
    for (final accessLevel in [
      StorageAccessLevel.guest,
      StorageAccessLevel.private,
      StorageAccessLevel.protected
    ]) {
      test('should resolve as empty string for $accessLevel', () async {
        final result = await prefixResolver.resolvePrefix(
          accessLevel: accessLevel,
        );

        expect(result, isEmpty);
      });
    }
  });
}
