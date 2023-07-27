// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

class MockLoggerPlugin extends AWSLoggerPlugin {
  MockLoggerPlugin([this.callback]);

  var _timesCalled = 0;
  int get timesCalled => _timesCalled;

  final void Function(LogEntry)? callback;

  @override
  void handleLogEntry(LogEntry logEntry) {
    _timesCalled++;
    callback?.call(logEntry);
  }
}

class MockLoggerPlugin2 extends MockLoggerPlugin {}

void main() {
  final logRecords = {
    LogLevel.verbose: LogEntry(
      level: LogLevel.verbose,
      message: 'Verbose Message',
      loggerName: AWSLogger.rootNamespace,
    ),
    LogLevel.debug: LogEntry(
      level: LogLevel.debug,
      message: 'Debug Message',
      loggerName: AWSLogger.rootNamespace,
    ),
    LogLevel.info: LogEntry(
      level: LogLevel.info,
      message: 'Info Message',
      loggerName: AWSLogger.rootNamespace,
    ),
    LogLevel.warn: LogEntry(
      level: LogLevel.warn,
      message: 'Warn Message',
      loggerName: AWSLogger.rootNamespace,
    ),
    LogLevel.error: LogEntry(
      level: LogLevel.error,
      message: 'Error Message',
      loggerName: AWSLogger.rootNamespace,
    ),
  };

  void callLogger(AWSLogger logger) {
    for (final record in logRecords.values) {
      logger.log(record.level, record.message);
    }
  }

  group('AWSLogger', () {
    setUp(() {
      AWSLogger().logLevel = zDefaultLogLevel;
    });

    tearDown(() {
      for (final logger in AWSLogger.activeLoggers.values) {
        logger.close();
      }
    });

    test('Logger plugin called with proper LogRecord', () {
      final loggerPlugin = MockLoggerPlugin(
        expectAsync1(count: logRecords.length, (entry) {
          final record = logRecords[entry.level]!;
          expect(entry.message, record.message);
        }),
      );

      final logger = AWSLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;
      callLogger(logger);
    });

    test('Unregistered plugin is not called', () {
      final loggerPlugin = MockLoggerPlugin();
      final logger = AWSLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;
      callLogger(logger);

      expect(loggerPlugin.timesCalled, 5);

      logger.unregisterPlugin(loggerPlugin);

      callLogger(logger);

      expect(loggerPlugin.timesCalled, 5);
    });

    test('Multiple LoggerPlugins register and unregister properly', () async {
      final loggerPlugin1 = MockLoggerPlugin();
      final loggerPlugin2 = MockLoggerPlugin2();
      final logger = AWSLogger()
        ..registerPlugin(loggerPlugin1)
        ..registerPlugin(loggerPlugin2)
        ..logLevel = LogLevel.verbose;
      callLogger(logger);

      expect(loggerPlugin1.timesCalled, 5);
      expect(loggerPlugin2.timesCalled, 5);

      logger.unregisterPlugin(loggerPlugin1);
      callLogger(logger);
      expect(loggerPlugin1.timesCalled, 5);
      expect(loggerPlugin2.timesCalled, 10);

      logger.unregisterPlugin(loggerPlugin2);
      callLogger(logger);
      expect(loggerPlugin1.timesCalled, 5);
      expect(loggerPlugin2.timesCalled, 10);
    });

    test('Default logger respects global log level', () async {
      final loggerPlugin = MockLoggerPlugin(
        expectAsync1(count: 2, (entry) {
          expect(entry.level, greaterThanOrEqualTo(LogLevel.warn));
        }),
      );

      final logger = AWSLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.warn;
      callLogger(logger);
    });

    test('Logger factory returns identical instances', () {
      final logger1 = AWSLogger();
      final logger2 = AWSLogger();
      expect(logger1, logger2);

      final namespacedLogger1 = AWSLogger('Namespace');
      final namespacedLogger2 = AWSLogger('Namespace');
      expect(namespacedLogger1, namespacedLogger2);
    });

    test('Detached logger factory returns non-identical instances', () {
      final logger1 = AWSLogger.detached();
      final logger2 = AWSLogger.detached();
      expect(logger1, isNot(logger2));
    });

    test('Child logger respects global log level', () async {
      final logger = AWSLogger()..logLevel = LogLevel.warn;

      final loggerPlugin = MockLoggerPlugin(
        expectAsync1(count: 2, (entry) {
          expect(const [LogLevel.warn, LogLevel.error], contains(entry.level));
        }),
      );
      final childLogger = logger.createChild('Child')
        ..registerPlugin(loggerPlugin);

      callLogger(childLogger);
    });

    test('Child logger overrides global log level', () {
      final logger = AWSLogger()..logLevel = LogLevel.none;

      final loggerPlugin = MockLoggerPlugin();
      final categoryLogger = logger.createChild('Child')
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;

      callLogger(categoryLogger);
      expect(loggerPlugin.timesCalled, 5);
    });

    test('Logger factory constructors return the same instance', () {
      final loggerPlugin = MockLoggerPlugin();
      final logger = AWSLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.none;

      callLogger(logger);
      expect(loggerPlugin.timesCalled, 0);

      AWSLogger().logLevel = LogLevel.verbose;

      callLogger(logger);
      expect(loggerPlugin.timesCalled, 5);
    });

    test('createChild returns the same instance for a given namespace', () {
      final loggerPlugin = MockLoggerPlugin();
      final logger = AWSLogger().createChild('Child')
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.none;

      callLogger(logger);
      expect(loggerPlugin.timesCalled, 0);

      AWSLogger().createChild('Child').logLevel = LogLevel.verbose;

      callLogger(logger);
      expect(loggerPlugin.timesCalled, 5);
    });

    test('Detached loggers exist outside the hierarchy', () {
      final loggerPlugin = MockLoggerPlugin();
      final logger = AWSLogger.detached('')
        ..logLevel = LogLevel.verbose
        ..registerPlugin(loggerPlugin);

      final globalLoggerPlugin = MockLoggerPlugin();
      final globalLogger = AWSLogger()
        ..logLevel = LogLevel.none
        ..registerPlugin(globalLoggerPlugin);

      callLogger(logger);
      callLogger(globalLogger);

      expect(loggerPlugin.timesCalled, 5);
      expect(globalLoggerPlugin.timesCalled, 0);
    });

    test('getPlugin returns registered plugin in the logger hierarchy', () {
      final plugin = MockLoggerPlugin();
      final logger = AWSLogger()..registerPlugin(plugin);
      expect(logger.getPlugin<MockLoggerPlugin>(), plugin);

      final childLogger = logger.createChild('child');
      expect(childLogger.getPlugin<MockLoggerPlugin>(), plugin);

      logger.unregisterPlugin(plugin);
      expect(logger.getPlugin<MockLoggerPlugin>(), isNull);
      expect(childLogger.getPlugin<MockLoggerPlugin>(), isNull);

      childLogger.registerPlugin(plugin);
      expect(logger.getPlugin<MockLoggerPlugin>(), isNull);
      expect(childLogger.getPlugin<MockLoggerPlugin>(), plugin);
    });

    test(
        'registerPlugin handles registering one plugin per type'
        ' in the logger hierarchy', () {
      final plugin = MockLoggerPlugin();
      final childLogger = AWSLogger()
          .createChild('child')
          .createChild('grandChild')
          .createChild('grandGrandChild');
      expect(() => childLogger.registerPlugin(plugin), returnsNormally);
      expect(() => childLogger.registerPlugin(plugin), throwsStateError);
      expect(() => AWSLogger().registerPlugin(plugin), throwsStateError);

      final newPlugin = MockLoggerPlugin();
      expect(() => AWSLogger().registerPlugin(newPlugin), throwsStateError);
      expect(() => childLogger.registerPlugin(newPlugin), throwsStateError);

      expect(() => childLogger.unregisterPlugin(plugin), returnsNormally);
      expect(childLogger.getPlugin<MockLoggerPlugin>(), isNull);

      expect(() => AWSLogger().registerPlugin(newPlugin), returnsNormally);
      expect(() => childLogger.registerPlugin(newPlugin), throwsStateError);
      expect(AWSLogger().getPlugin<MockLoggerPlugin>(), newPlugin);
      expect(childLogger.getPlugin<MockLoggerPlugin>(), newPlugin);
    });

    group('registerPlugin allows registering plugins of same superclass', () {
      test('can register to the root logger', () {
        final logger = AWSLogger();
        final plugin1 = MockLoggerPlugin();
        final plugin2 = MockLoggerPlugin2();

        expect(() => logger.registerPlugin(plugin2), returnsNormally);
        expect(() => logger.registerPlugin(plugin1), returnsNormally);

        expect(logger.getPlugin<MockLoggerPlugin>(), plugin1);
        expect(logger.getPlugin<MockLoggerPlugin2>(), plugin2);
      });

      test('can register to the root logger and its child', () {
        final logger = AWSLogger();
        final plugin1 = MockLoggerPlugin();
        final plugin2 = MockLoggerPlugin2();
        final childLogger = logger.createChild('child');

        expect(() => childLogger.registerPlugin(plugin2), returnsNormally);
        expect(() => logger.registerPlugin(plugin1), returnsNormally);

        expect(logger.getPlugin<MockLoggerPlugin>(), plugin1);
        expect(logger.getPlugin<MockLoggerPlugin2>(), isNull);
        expect(childLogger.getPlugin<MockLoggerPlugin>(), plugin1);
        expect(childLogger.getPlugin<MockLoggerPlugin2>(), plugin2);
      });
    });
  });
}
