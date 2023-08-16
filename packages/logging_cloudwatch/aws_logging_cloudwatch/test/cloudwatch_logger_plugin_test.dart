// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  late MockCloudWatchLogsClient mockCloudWatchLogsClient;
  late MockQueuedItemStore mockQueuedItemStore;
  late MockCloudWatchLogStreamProvider mockCloudWatchLogStreamProvider;
  late CloudWatchLoggerPlugin plugin;
  late MockSmithyOperation<PutLogEventsResponse> mockPutLogEventsOperation;

  const loggingConstraint = LoggingConstraint();
  const pluginConfig = CloudWatchLoggerPluginConfiguration(
    logGroupName: 'logGroupName',
    region: 'region',
    localLoggingConstraint: loggingConstraint,
    enable: false,
  );

  final errorLog = LogEntry(
    level: LogLevel.error,
    message: 'error message',
    loggerName: 'loggerName',
  );

  final warnLog = LogEntry(
    level: LogLevel.warn,
    message: 'warning message',
    loggerName: 'loggerName',
  );

  final queuedItems = <QueuedItem>[
    QueuedItem(
      id: 1,
      value: 'first log message',
      timestamp: DateTime.timestamp().toIso8601String(),
    ),
    QueuedItem(
      id: 2,
      value: 'second log message',
      timestamp: DateTime.timestamp().toIso8601String(),
    ),
    QueuedItem(
      id: 3,
      value: 'third log message',
      timestamp: DateTime.timestamp().toIso8601String(),
    ),
    QueuedItem(
      id: 4,
      value: 'forth log message',
      timestamp: DateTime.timestamp().toIso8601String(),
    )
  ];

  group('enable/disable: ', () {
    setUp(() {
      mockCloudWatchLogsClient = MockCloudWatchLogsClient();
      mockQueuedItemStore = MockQueuedItemStore();
      mockCloudWatchLogStreamProvider = MockCloudWatchLogStreamProvider();
      plugin = CloudWatchLoggerPlugin.testPlugin(
        client: mockCloudWatchLogsClient,
        pluginConfig: pluginConfig,
        logStore: mockQueuedItemStore,
        logStreamProvider: mockCloudWatchLogStreamProvider,
      );
    });

    test('when enabled, logs are added to the item store', () async {
      when(
        () => mockQueuedItemStore.addItem(
          any(),
          any(),
          enableQueueRotation: false,
        ),
      ).thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(false);

      plugin.enable();

      await expectLater(
        plugin.handleLogEntry(errorLog),
        completes,
      );

      verify(
        () => mockQueuedItemStore.addItem(
          any(),
          any(),
          enableQueueRotation: false,
        ),
      ).called(1);

      verify(
        () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
      ).called(1);
    });

    test('when enabled,logs are not added to the log store if not loggable',
        () async {
      plugin.enable();
      await expectLater(
        plugin.handleLogEntry(warnLog),
        completes,
      );
      verifyZeroInteractions(mockQueuedItemStore);
    });

    test(
        'when disabled, logs are cleared from item store and new logs will not'
        ' be added to the local store', () async {
      when(() => mockQueuedItemStore.clear()).thenAnswer((_) => Future.value());
      await plugin.disable();
      await expectLater(
        plugin.handleLogEntry(warnLog),
        completes,
      );
      verifyNever(() => mockQueuedItemStore.addItem(any(), any()));
      verify(() => mockQueuedItemStore.clear()).called(1);
    });
  });

  group('flush logs: ', () {
    setUp(() {
      registerFallbackValue(
        PutLogEventsRequest(
          logGroupName: 'logGroupName',
          logStreamName: 'logStreamName',
          logEvents: <InputLogEvent>[],
        ),
      );
      mockCloudWatchLogsClient = MockCloudWatchLogsClient();
      mockQueuedItemStore = MockQueuedItemStore();
      mockCloudWatchLogStreamProvider = MockCloudWatchLogStreamProvider();
      mockPutLogEventsOperation = MockSmithyOperation<PutLogEventsResponse>();

      plugin = CloudWatchLoggerPlugin.testPlugin(
        client: mockCloudWatchLogsClient,
        pluginConfig: pluginConfig,
        logStore: mockQueuedItemStore,
        logStreamProvider: mockCloudWatchLogStreamProvider,
      );
    });

    test('it starts a sync when it is not in progress', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(PutLogEventsResponse()),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(false);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(1);
    });

    test('does not start a sync if a sync is in progress', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(
          PutLogEventsResponse(),
        ),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(false);

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      final flushLogs = plugin.flushLogs();
      await expectLater(
        plugin.flushLogs(),
        completes,
      );
      await flushLogs;

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(1);
    });

    test('does not delete logs if they are too new', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(
          PutLogEventsResponse(
            rejectedLogEventsInfo:
                RejectedLogEventsInfo(tooNewLogEventStartIndex: 0),
          ),
        ),
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockQueuedItemStore.addItem(any(), any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(false);

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verifyNever(
        () => mockQueuedItemStore.deleteItems(any()),
      );
    });

    test('it calls create log stream on resource not found exception',
        () async {
      when(() => mockCloudWatchLogsClient.putLogEvents(any()))
          .thenThrow(ResourceNotFoundException());

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockCloudWatchLogStreamProvider.createLogStream(any()))
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(false);

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verify(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      ).called(1);
    });

    test('it enables log rotation when log store is full and retry is set',
        () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(PutLogEventsResponse()),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(true);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );
      plugin.enable();

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      await expectLater(
        plugin.handleLogEntry(errorLog),
        completes,
      );

      verify(
        () => mockQueuedItemStore.addItem(
          any(),
          any(),
          enableQueueRotation: true,
        ),
      ).called(1);
    });

    test(
      'it does not enable log rotation when log store is full if retry is not '
      'set. it start sync on full log store.',
      () async {
        final isFullResponse = [false, true, false];
        when(
          () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
        ).thenAnswer((_) => isFullResponse.removeAt(0));

        when(
          () => mockPutLogEventsOperation.result,
        ).thenAnswer(
          (_) async =>
              Future<PutLogEventsResponse>.value(PutLogEventsResponse()),
        );

        when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
          (_) => mockPutLogEventsOperation,
        );

        when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
            .thenAnswer((_) async => Future<String>.value('log stream name'));

        when(() => mockQueuedItemStore.deleteItems(any()))
            .thenAnswer((_) async => {});

        when(() => mockQueuedItemStore.getAll()).thenAnswer(
          (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
        );

        plugin.enable();

        await expectLater(
          plugin.flushLogs(),
          completes,
        );

        await expectLater(
          plugin.handleLogEntry(errorLog),
          completes,
        );

        verify(
          () => mockCloudWatchLogsClient.putLogEvents(any()),
        ).called(2);

        verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(2);

        verify(
          () => mockQueuedItemStore.addItem(
            any(),
            any(),
            enableQueueRotation: false,
          ),
        ).called(1);
      },
    );

    test('it does not sync on full log store if retry time not reached',
        () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(PutLogEventsResponse()),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenReturn(true);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );
      plugin.enable();

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      await expectLater(
        plugin.handleLogEntry(errorLog),
        completes,
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(1);
    });

    test(
      'it deletes too old logs in the batch and sync the rest',
      () async {
        final responses = [
          PutLogEventsResponse(
            rejectedLogEventsInfo:
                RejectedLogEventsInfo(tooOldLogEventEndIndex: 0),
          ),
          PutLogEventsResponse(),
        ];

        when(
          () => mockPutLogEventsOperation.result,
        ).thenAnswer(
          (_) async {
            final response = responses.removeAt(0);
            return Future<PutLogEventsResponse>.value(response);
          },
        );

        when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
          (_) => mockPutLogEventsOperation,
        );

        when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
            .thenAnswer((_) async => Future<String>.value('log stream name'));

        when(
          () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
        ).thenReturn(false);

        when(() => mockQueuedItemStore.deleteItems(any()))
            .thenAnswer((_) async => {});

        when(() => mockQueuedItemStore.getAll()).thenAnswer(
          (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
        );
        plugin.enable();

        await expectLater(
          plugin.flushLogs(),
          completes,
        );

        verify(
          () => mockCloudWatchLogsClient.putLogEvents(any()),
        ).called(2);

        final captures = verify(
          () => mockQueuedItemStore
              .deleteItems(captureAny<Iterable<QueuedItem>>()),
        );

        expect(captures.callCount, 2);
        expect(
          (captures.captured.first as Iterable<QueuedItem>).first,
          queuedItems.first,
        );
        expect(
          (captures.captured.last as Iterable<QueuedItem>),
          queuedItems.sublist(1),
        );
      },
    );

    test('it deletes expired logs in the batch and sync the rest', () async {
      final responses = [
        PutLogEventsResponse(
          rejectedLogEventsInfo:
              RejectedLogEventsInfo(expiredLogEventEndIndex: 0),
        ),
        PutLogEventsResponse(),
      ];

      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async {
          final response = responses.removeAt(0);
          return Future<PutLogEventsResponse>.value(response);
        },
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(
        () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
      ).thenReturn(false);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );
      plugin.enable();

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(2);

      final captures = verify(
        () =>
            mockQueuedItemStore.deleteItems(captureAny<Iterable<QueuedItem>>()),
      );

      expect(captures.callCount, 2);
      expect(
        (captures.captured.first as Iterable<QueuedItem>).first,
        queuedItems.first,
      );
      expect(
        (captures.captured.last as Iterable<QueuedItem>),
        queuedItems.sublist(1),
      );
    });

    test('it leaves too new logs in the batch and sync the rest', () async {
      final responses = [
        PutLogEventsResponse(
          rejectedLogEventsInfo:
              RejectedLogEventsInfo(tooNewLogEventStartIndex: 1),
        ),
        PutLogEventsResponse(),
      ];

      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async {
          final response = responses.removeAt(0);
          return Future<PutLogEventsResponse>.value(response);
        },
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(
        () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
      ).thenReturn(false);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );
      plugin.enable();

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(2);

      final captures = verify(
        () =>
            mockQueuedItemStore.deleteItems(captureAny<Iterable<QueuedItem>>()),
      );

      expect(captures.callCount, 1);
      expect(captures.captured.length, 1);
      expect(
        (captures.captured.last as Iterable<QueuedItem>).first,
        queuedItems.first,
      );
    });

    test(
        'it deltes old logs and leaves too new logs in the batch'
        ' and sync the rest', () async {
      final responses = [
        PutLogEventsResponse(
          rejectedLogEventsInfo: RejectedLogEventsInfo(
            expiredLogEventEndIndex: 0,
            tooOldLogEventEndIndex: 1,
            tooNewLogEventStartIndex: 3,
          ),
        ),
        PutLogEventsResponse(),
      ];

      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async {
          final response = responses.removeAt(0);
          return Future<PutLogEventsResponse>.value(response);
        },
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(
        () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
      ).thenReturn(false);

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );
      plugin.enable();

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(2);

      final captures = verify(
        () =>
            mockQueuedItemStore.deleteItems(captureAny<Iterable<QueuedItem>>()),
      );

      expect(captures.callCount, 2);
      expect(
        (captures.captured.first as Iterable<QueuedItem>),
        queuedItems.sublist(0, 2),
      );

      expect(
        (captures.captured.last as Iterable<QueuedItem>),
        queuedItems.sublist(2, 3),
      );
    });
  });
}
