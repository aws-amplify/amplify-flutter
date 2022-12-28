// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
