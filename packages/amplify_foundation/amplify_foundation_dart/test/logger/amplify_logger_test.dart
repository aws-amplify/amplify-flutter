// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:test/test.dart';

/// A test [LogSink] that captures emitted messages.
class CapturingLogSink implements LogSink {
  CapturingLogSink({required this.logLevel});

  @override
  final String id = 'capturing-sink';

  final LogLevel logLevel;

  final List<LogMessage> messages = [];

  @override
  bool isEnabled(LogLevel logLevel) => logLevel <= this.logLevel;

  @override
  void emit(LogMessage message) {
    if (isEnabled(message.level)) {
      messages.add(message);
    }
  }
}

void main() {
  group('BroadcastLogger', () {
    test('all logs are recorded when sink threshold is verbose', () {
      final sink = CapturingLogSink(logLevel: LogLevel.verbose);
      BroadcastLogger(name: 'test', sinks: [sink])
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(sink.messages, hasLength(5));
      expect(sink.messages.map((m) => m.level).toList(), [
        LogLevel.error,
        LogLevel.warn,
        LogLevel.info,
        LogLevel.debug,
        LogLevel.verbose,
      ]);
    });

    test('no logs are recorded when sink threshold is none', () {
      final sink = CapturingLogSink(logLevel: LogLevel.none);
      BroadcastLogger(name: 'test', sinks: [sink])
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(sink.messages, isEmpty);
    });

    test('threshold level is adhered', () {
      final sink = CapturingLogSink(logLevel: LogLevel.info);
      BroadcastLogger(name: 'test', sinks: [sink])
        ..error('error')
        ..warn('warn')
        ..info('info')
        ..debug('debug')
        ..verbose('verbose');

      expect(sink.messages, hasLength(3));
      expect(sink.messages.map((m) => m.level).toList(), [
        LogLevel.error,
        LogLevel.warn,
        LogLevel.info,
      ]);
    });

    test('name, content, error, and stackTrace are recorded', () {
      final sink = CapturingLogSink(logLevel: LogLevel.verbose);
      final logger = BroadcastLogger(name: 'myLogger', sinks: [sink]);

      const message = 'test message';
      final error = Object();
      const stackTrace = MockStackTrace();

      logger.error(message, error, stackTrace);

      final log = sink.messages..single;
      expect(log.first.name, 'myLogger');
      expect(log.first.content, message);
      expect(log.first.error, error);
      expect(log.first.stackTrace, stackTrace);
      expect(log.first.level, LogLevel.error);
    });

    test('log method works with explicit level', () {
      final sink = CapturingLogSink(logLevel: LogLevel.verbose);
      BroadcastLogger(
        name: 'test',
        sinks: [sink],
      ).log(LogLevel.debug, 'debug via log()');

      expect(sink.messages, hasLength(1));
      expect(sink.messages.first.level, LogLevel.debug);
      expect(sink.messages.first.content, 'debug via log()');
    });

    test('broadcasts to multiple sinks', () {
      final sink1 = CapturingLogSink(logLevel: LogLevel.verbose);
      final sink2 = CapturingLogSink(logLevel: LogLevel.error);
      BroadcastLogger(name: 'test', sinks: [sink1, sink2])
        ..error('error')
        ..info('info');

      // sink1 (verbose) gets both
      expect(sink1.messages, hasLength(2));
      // sink2 (error) only gets the error
      expect(sink2.messages, hasLength(1));
      expect(sink2.messages.first.level, LogLevel.error);
    });
  });

  group('LogLevel', () {
    test('ordering is correct', () {
      expect(LogLevel.none < LogLevel.error, isTrue);
      expect(LogLevel.error < LogLevel.warn, isTrue);
      expect(LogLevel.warn < LogLevel.info, isTrue);
      expect(LogLevel.info < LogLevel.debug, isTrue);
      expect(LogLevel.debug < LogLevel.verbose, isTrue);
    });

    test('Comparable compareTo works', () {
      expect(LogLevel.error.compareTo(LogLevel.warn), lessThan(0));
      expect(LogLevel.info.compareTo(LogLevel.info), equals(0));
      expect(LogLevel.verbose.compareTo(LogLevel.debug), greaterThan(0));
    });
  });

  group('LogMessage', () {
    test('fields are set correctly', () {
      final error = Exception('test');
      const stackTrace = MockStackTrace();

      final message = LogMessage(
        level: LogLevel.warn,
        name: 'loggerName',
        content: 'some content',
        error: error,
        stackTrace: stackTrace,
      );

      expect(message.level, LogLevel.warn);
      expect(message.name, 'loggerName');
      expect(message.content, 'some content');
      expect(message.error, error);
      expect(message.stackTrace, stackTrace);
    });

    test('error and stackTrace default to null', () {
      const message = LogMessage(
        level: LogLevel.info,
        name: 'test',
        content: 'hello',
      );

      expect(message.error, isNull);
      expect(message.stackTrace, isNull);
    });
  });

  group('AmplifyLogging', () {
    late CapturingLogSink sink;

    setUp(() {
      sink = CapturingLogSink(logLevel: LogLevel.verbose);
    });

    tearDown(() {
      // Remove the registered sink to avoid leaking state between tests
      AmplifyLogging.removeSink(sink);
    });

    test('logger broadcasts to registered sinks', () {
      AmplifyLogging.addSink(sink);
      AmplifyLogging.logger('test').info('hello');

      expect(sink.messages, hasLength(1));
      expect(sink.messages.first.content, 'hello');
    });

    test('removeSink stops messages', () {
      AmplifyLogging.addSink(sink);
      AmplifyLogging.removeSink(sink);
      AmplifyLogging.logger('test').info('hello');

      expect(sink.messages, isEmpty);
    });
  });

  group('AmplifySimplePrinterLogSink', () {
    test('isEnabled respects logLevel threshold', () {
      final sink = AmplifySimplePrinterLogSink(logLevel: LogLevel.info);

      expect(sink.isEnabled(LogLevel.error), isTrue);
      expect(sink.isEnabled(LogLevel.warn), isTrue);
      expect(sink.isEnabled(LogLevel.info), isTrue);
      expect(sink.isEnabled(LogLevel.debug), isFalse);
      expect(sink.isEnabled(LogLevel.verbose), isFalse);
    });

    test('has unique id', () {
      final sink1 = AmplifySimplePrinterLogSink(logLevel: LogLevel.info);
      final sink2 = AmplifySimplePrinterLogSink(logLevel: LogLevel.info);
      expect(sink1.id, isNot(equals(sink2.id)));
    });
  });
}

class MockStackTrace implements StackTrace {
  const MockStackTrace();
}
