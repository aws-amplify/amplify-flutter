// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Amplify Logger Provider Test', () {
    test('new name returns new loggers', () {
      final loggerProvider = AmplifyLoggerProvider(
        createLogger: (name) {
          return AmplifyNoOpLogger();
        },
      );

      const name1 = 'name1';
      const name2 = 'name2';

      final logger1 = loggerProvider.resolve(name1);
      final logger2 = loggerProvider.resolve(name2);

      expect(logger1, isNot(logger2));
    });

    test('cached logger are returned', () {
      final loggerProvider = AmplifyLoggerProvider(
        createLogger: (name) {
          return AmplifyNoOpLogger();
        },
      );

      const name = 'name';

      final logger1 = loggerProvider.resolve(name);
      final logger2 = loggerProvider.resolve(name);

      expect(logger1, logger2);
    });

    test('name is passed to the createLogger', () {
      const myName = 'myName';

      AmplifyLoggerProvider(
        createLogger: (name) {
          expect(name, myName);
          return AmplifyNoOpLogger();
        },
      ).resolve(myName);
    });
  });
}
