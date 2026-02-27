// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

void main() {
  group('Amplify Logger Test', () {
    test('all logs are recorded', () {
      final expectedLogLevels = [
        LogLevel.error,
        LogLevel.warn,
        LogLevel.info,
        LogLevel.debug,
        LogLevel.verbose,
      ];
      AmplifyLogger(
          name: 'test',
          thresholdLevel: LogLevel.all,
          logHandler: (log) {
            expect(expectedLogLevels.remove(log.level), true);
          },
        )
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(expectedLogLevels.isEmpty, true);
    });

    test('no logs are recorded', () {
      final expectedLogLevels = <LogLevel>[];
      AmplifyLogger(
          name: 'test',
          thresholdLevel: LogLevel.none,
          logHandler: (log) {
            expect(expectedLogLevels.remove(log.level), true);
          },
        )
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(expectedLogLevels.isEmpty, true);
    });

    test('threshold level is adhered', () {
      final expectedLogLevels = [LogLevel.error, LogLevel.warn, LogLevel.info];
      AmplifyLogger(
          name: 'test',
          thresholdLevel: LogLevel.info,
          logHandler: (log) {
            expect(expectedLogLevels.remove(log.level), true);
          },
        )
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(expectedLogLevels.isEmpty, true);
    });

    test('name, message, error, and stackTrace are recorded', () {
      const name = 'name';
      const message = 'message';
      final error = Object();
      final stackTrace = MockStackTrace();

      AmplifyLogger(
          name: name,
          thresholdLevel: LogLevel.all,
          logHandler: (log) {
            expect(log.name, name);
            expect(log.message, message);
            expect(log.error, error);
            expect(log.stackTrace, stackTrace);
          },
        )
        ..error(message, error, stackTrace)
        ..warn(message, error, stackTrace)
        ..info(message, error, stackTrace)
        ..debug(message, error, stackTrace)
        ..verbose(message, error, stackTrace);
    });
  });
}

class MockStackTrace implements StackTrace {}
