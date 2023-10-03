// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:amplify_core/amplify_core.dart';
// ignore: invalid_use_of_internal_member, implementation_imports
import 'package:amplify_core/src/http/amplify_category_method.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/queued_item_store/in_memory_queued_item_store.dart';
import 'package:aws_logging_cloudwatch/src/queued_item_store/queued_item_store.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:aws_logging_cloudwatch/src/stoppable_timer.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

// https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html

// The batch of events must satisfy the following constraints:

// The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.

// None of the log events in the batch can be more than 2 hours in the future.

// None of the log events in the batch can be more than 14 days in the past. Also, none of the log events can be from earlier than the retention period of the log group.

// The log events in the batch must be in chronological order by their timestamp. The timestamp is the time that the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)

// A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.

// Each log event can be no larger than 256 KB.

// The maximum number of log events in a batch is 10,000.

const int _maxNumberOfLogEventsInBatch = 10000;
const int _maxLogEventsBatchSize = 1048576;
const int _baseBufferSize = 26;
const int _maxLogEventsTimeSpanInBatch = Duration.millisecondsPerDay;
const int _maxLogEventSize = 256000;
const Duration _minusMaxLogEventTimeInFuture = Duration(hours: -2);
const Duration _baseRetryInterval = Duration(seconds: 10);

typedef _LogBatch = (List<QueuedItem> logQueues, List<InputLogEvent> logEvents);

/// {@template aws_logging_cloudwatch.cloudwatch_logger_plugin}
/// An [AWSLoggerPlugin] for sending logs to AWS CloudWatch Logs.
/// {@endtemplate}
class CloudWatchLoggerPlugin extends AWSLoggerPlugin
    with AWSDebuggable, AmplifyLoggerMixin {
  /// {@macro aws_logging_cloudwatch.cloudwatch_logger_plugin}
  CloudWatchLoggerPlugin({
    required AWSCredentialsProvider credentialsProvider,
    required CloudWatchPluginConfig pluginConfig,
    RemoteLoggingConstraintProvider? remoteLoggingConstraintProvider,
    CloudWatchLogStreamProvider? logStreamProvider,
    // TODO(nikahsn): remove after moving queued item store implementation from
    // amplify_logging_cloudwath to aws_logging_cloudwatch
    @protected QueuedItemStore? logStore,
  })  : _enabled = pluginConfig.enable,
        _pluginConfig = pluginConfig,
        _remoteLoggingConstraintProvider = remoteLoggingConstraintProvider ??
            (pluginConfig.defaultRemoteConfiguration != null
                ? DefaultRemoteLoggingConstraintProvider(
                    config: pluginConfig.defaultRemoteConfiguration!,
                    credentialsProvider: credentialsProvider,
                    region: pluginConfig.region,
                  )
                : null),
        _client = CloudWatchLogsClient(
          region: pluginConfig.region,
          credentialsProvider: credentialsProvider,
        ),
        // TODO(nikahsn): move queued item store implementation from
        // amplify_logging_cloudwath to aws_logging_cloudwatch and use
        // DartQueueItemStore instead of InMemoryQueuedItemStore
        _logStore = logStore ?? InMemoryQueuedItemStore(),
        _logStreamProvider = logStreamProvider ??
            DefaultCloudWatchLogStreamProvider(
              logGroupName: pluginConfig.logGroupName,
              region: pluginConfig.region,
              credentialsProvider: credentialsProvider,
            ) {
    _timer = pluginConfig.flushIntervalInSeconds > 0
        ? StoppableTimer(
            duration: Duration(seconds: pluginConfig.flushIntervalInSeconds),
            callback: identifyCall(
              LoggingCategoryMethod.batchSend,
              () => _startSyncingIfNotInProgress,
            ),
            onError: _onTimerError,
          )
        : null;
    if (!pluginConfig.enable) {
      _timer?.stop();
    }
    Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) async {
      if (event.type == AuthHubEventType.signedOut ||
          event.type == AuthHubEventType.userDeleted ||
          event.type == AuthHubEventType.sessionExpired) {
        await _clearLogs();
      }
    });
  }

  /// An [AWSLoggerPlugin] to use only for testing.
  @protected
  @visibleForTesting
  CloudWatchLoggerPlugin.testPlugin({
    required CloudWatchLogsClient client,
    required CloudWatchPluginConfig pluginConfig,
    required CloudWatchLogStreamProvider logStreamProvider,
    required QueuedItemStore logStore,
    RemoteLoggingConstraintProvider? remoteLoggingConstraintProvider,
  })  : _enabled = pluginConfig.enable,
        _pluginConfig = pluginConfig,
        _logStore = logStore,
        _remoteLoggingConstraintProvider = remoteLoggingConstraintProvider,
        _logStreamProvider = logStreamProvider,
        _client = client {
    Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) async {
      if (event.type == AuthHubEventType.signedOut ||
          event.type == AuthHubEventType.userDeleted ||
          event.type == AuthHubEventType.sessionExpired) {
        await _clearLogs();
      }
    });
  }

  final CloudWatchPluginConfig _pluginConfig;
  final CloudWatchLogsClient _client;
  final CloudWatchLogStreamProvider _logStreamProvider;
  final QueuedItemStore _logStore;
  bool _syncing = false;
  bool _enabled;
  StoppableTimer? _timer;
  RemoteLoggingConstraintProvider? _remoteLoggingConstraintProvider;
  int _retryCount = 0;
  DateTime? _retryTime;
  set remoteLoggingConstraintProvider(
    RemoteLoggingConstraintProvider remoteProvider,
  ) {
    if (_remoteLoggingConstraintProvider != null) {
      throw StateError(
        'remoteLoggingConstraintProvider is already configured.',
      );
    }
    _remoteLoggingConstraintProvider = remoteProvider;
  }

  Future<void> _startSyncingIfNotInProgress() async {
    Future<void> startSyncing() async {
      final batchStream = _getLogBatchesToSync();

      await for (final (logs, events) in batchStream) {
        _TooNewLogEventException? tooNewException;

        while (logs.isNotEmpty && events.isNotEmpty) {
          final rejectedLogEventsInfo =
              (await _sendToCloudWatch(events)).rejectedLogEventsInfo;

          if (rejectedLogEventsInfo == null) {
            await _logStore.deleteItems(logs);
            break;
          }

          final (tooOldEndIndex, tooNewStartIndex) =
              rejectedLogEventsInfo.parse(events.length);

          if (_isValidIndex(tooNewStartIndex, events.length)) {
            tooNewException = _TooNewLogEventException(
              events[tooNewStartIndex!].timestamp.toInt(),
            );
            // set logs to end before the index.
            logs.removeRange(tooNewStartIndex, events.length);
            // set events to end before the index.
            events.removeRange(tooNewStartIndex, events.length);
          }

          if (_isValidIndex(tooOldEndIndex, events.length)) {
            // remove old logs from log store.
            await _logStore.deleteItems(
              logs.sublist(0, tooOldEndIndex! + 1),
            );
            // set logs to start after the index.
            logs.removeRange(0, tooOldEndIndex + 1);
            // set events to start after the index.
            events.removeRange(0, tooOldEndIndex + 1);
          }
        }

        // after sending each batch to CloudWatch check if the batch has
        // `tooNewException` and throw to stop syncing next batches.
        if (tooNewException != null) {
          throw tooNewException;
        }
      }
    }

    if (!_syncing) {
      _syncing = true;

      DateTime? nextRetry;

      try {
        await startSyncing();
      } on _TooNewLogEventException catch (e) {
        nextRetry = DateTime.fromMillisecondsSinceEpoch(
          e.timeInMillisecondsSinceEpoch,
        ).add(_minusMaxLogEventTimeInFuture);
      } on Exception catch (e) {
        logger.error('Failed to sync logs to CloudWatch.', e);
      } finally {
        _handleFullLogStoreAfterSync(
          retryTime: nextRetry,
        );
        _syncing = false;
      }
    }
  }

  void _handleFullLogStoreAfterSync({
    DateTime? retryTime,
  }) {
    final isLogStoreFull =
        _logStore.isFull(_pluginConfig.localStoreMaxSizeInMB);
    if (!isLogStoreFull) {
      _retryCount = 0;
      _retryTime = null;
      return;
    }
    if (retryTime != null && retryTime.isAfter(DateTime.timestamp())) {
      _retryTime = retryTime;
      return;
    }
    _retryCount += 1;
    _retryTime = DateTime.timestamp().add((_baseRetryInterval * _retryCount));
  }

  bool _shouldSyncOnFullLogStore() {
    if (_retryTime == null) {
      return true;
    }
    return !(_retryTime!.isAfter(DateTime.timestamp()));
  }

  void _onTimerError(Object e) {
    logger.error('Failed to sync logs to CloudWatch.', e);
  }

  LoggingConstraints _getLoggingConstraint() {
    final result = _remoteLoggingConstraintProvider?.loggingConstraint;
    return result ?? _pluginConfig.loggingConstraints;
  }

  Future<PutLogEventsResponse> _sendToCloudWatch(
    List<InputLogEvent> logEvents,
  ) async {
    final logStreamName = await _logStreamProvider.defaultLogStream;
    final request = PutLogEventsRequest(
      logGroupName: _pluginConfig.logGroupName,
      logStreamName: logStreamName,
      logEvents: logEvents,
    );
    try {
      return await _client.putLogEvents(request).result;
    } on ResourceNotFoundException {
      await _logStreamProvider.createLogStream(logStreamName);
      return _client.putLogEvents(request).result;
    }
  }

  Stream<_LogBatch> _getLogBatchesToSync() async* {
    final queuedLogs = (await _logStore.getAll()).toList();
    if (queuedLogs.isEmpty) {
      return;
    }
    final logEvents = <InputLogEvent>[];
    final logQueues = <QueuedItem>[];
    var totalByteSize = 0;

    for (final currentLog in queuedLogs) {
      final currentLogEvent = currentLog.toInputLogEvent();
      final size = currentLogEvent.message.length + _baseBufferSize;
      if (totalByteSize + size >= _maxLogEventsBatchSize ||
          logEvents.length >= _maxNumberOfLogEventsInBatch ||
          (logEvents.length > 1 &&
              currentLogEvent.timestamp - logEvents.first.timestamp >=
                  _maxLogEventsTimeSpanInBatch)) {
        yield (logQueues, logEvents);
        totalByteSize = 0;
        logEvents.clear();
        logQueues.clear();
      }
      totalByteSize += size;
      logEvents.add(currentLogEvent);
      logQueues.add(currentLog);
    }
    yield (logQueues, logEvents);
  }

  /// Whether a [logEntry] should be logged by this plugin.
  bool _isLoggable(LogEntry logEntry) {
    if (!_enabled) {
      return false;
    }
    final loggingConstraint = _getLoggingConstraint();
    return logEntry.level >= loggingConstraint.defaultLogLevel;
  }

  @override
  Future<void> handleLogEntry(LogEntry logEntry) async {
    if (!(_isLoggable(logEntry))) {
      return;
    }
    final item = logEntry.toQueuedItem();
    final isLogStoreFull =
        _logStore.isFull(_pluginConfig.localStoreMaxSizeInMB);
    final shouldEnableQueueRotation = isLogStoreFull && _retryTime != null;

    await _logStore.addItem(
      item.value,
      item.timestamp,
      enableQueueRotation: shouldEnableQueueRotation,
    );

    if (isLogStoreFull && _shouldSyncOnFullLogStore()) {
      await identifyCall(
        LoggingCategoryMethod.batchSend,
        _startSyncingIfNotInProgress,
      );
    }
  }

  /// Enables the plugin.
  void enable() {
    if (!_enabled) {
      _enabled = true;
      _timer?.start();
    }
  }

  /// Disables the plugin.
  ///
  /// It deletes cached logs from local store and stops sending logs to
  /// CloudWatch.
  ///
  /// To send cached logs to CloudWatch call `flushLogs()` before calling
  /// `disable()`.
  Future<void> disable() async {
    _enabled = false;
    _timer?.stop();
    await _logStore.clear();
    _retryCount = 0;
    _retryTime = null;
  }

  /// Sends logs on-demand to CloudWatch.
  Future<void> flushLogs() async {
    await identifyCall(
      LoggingCategoryMethod.flush,
      _startSyncingIfNotInProgress,
    );
  }

  @override
  String get runtimeTypeName => 'CloudWatchLoggerPlugin';

  Future<void> _clearLogs() async {
    await _logStore.clear();
  }

  @override
  AmplifyLogger get logger => AmplifyLogger.category(Category.logging);
}

extension on QueuedItem {
  InputLogEvent toInputLogEvent() {
    // message is truncated to satisfy the max size of `_maxLogEventSize` with
    // 8 byte reserved for the `timestamp`.

    final end = min(value.length, _maxLogEventSize - 8);
    return InputLogEvent(
      message: value.substring(0, end),
      timestamp: Int64(DateTime.parse(timestamp).millisecondsSinceEpoch),
    );
  }
}

extension on LogEntry {
  ({String value, String timestamp}) toQueuedItem() {
    return (
      value: '${level.name.toUpperCase()}/$loggerName: $message',
      timestamp: time.toUtc().toIso8601String()
    );
  }
}

extension on RejectedLogEventsInfo {
  (int? pastEndIndex, int? futureStartIndex) parse(int length) {
    int? pastEndIndex;
    int? futureStartIndex;

    if (_isValidIndex(tooOldLogEventEndIndex, length)) {
      pastEndIndex = tooOldLogEventEndIndex;
    }
    if (_isValidIndex(expiredLogEventEndIndex, length)) {
      pastEndIndex = pastEndIndex == null
          ? expiredLogEventEndIndex
          : max(pastEndIndex, expiredLogEventEndIndex!);
    }
    if (_isValidIndex(tooNewLogEventStartIndex, length)) {
      futureStartIndex = tooNewLogEventStartIndex;
    }
    return (pastEndIndex, futureStartIndex);
  }
}

class _TooNewLogEventException implements Exception {
  const _TooNewLogEventException(
    this.timeInMillisecondsSinceEpoch,
  );
  final int timeInMillisecondsSinceEpoch;
}

bool _isValidIndex(int? index, int length) {
  return index != null && index >= 0 && index <= length - 1;
}
