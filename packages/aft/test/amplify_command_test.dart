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

import 'package:aft/aft.dart';
import 'package:test/test.dart';

class MockCommand extends AmplifyCommand {
  @override
  String get description => throw UnimplementedError();

  @override
  String get name => throw UnimplementedError();
}

void main() {
  group('AmplifyCommand', () {
    final command = MockCommand();

    test('rootDir', () {
      expect(command.rootDir, completes);
    });

    test('allPackages', () async {
      final allPackages = await command.allPackages;
      expect(
        allPackages,
        contains('amplify_flutter'),
      );
    });

    test('globalDependencyConfig', () async {
      final config = await command.aftConfig;
      expect(config.dependencies, contains('uuid'));
    });
  });
}
