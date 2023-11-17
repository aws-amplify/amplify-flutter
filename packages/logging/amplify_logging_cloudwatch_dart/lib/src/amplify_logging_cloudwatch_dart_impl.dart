// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:amplify_core/amplify_core.dart';
// ignore: invalid_use_of_internal_member, implementation_imports
import 'package:amplify_core/src/http/amplify_category_method.dart';
import 'package:amplify_logging_cloudwatch_dart/amplify_logging_cloudwatch_dart.dart';
import 'package:amplify_logging_cloudwatch_dart/src/path_provider/app_path_provider.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/dart_queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/queued_item_store/queued_item_store.dart';
import 'package:amplify_logging_cloudwatch_dart/src/sdk/cloud_watch_logs.dart';
import 'package:amplify_logging_cloudwatch_dart/src/stoppable_timer.dart';
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

/// {@template amplify_logging_cloudwatch_dart_dart.cloudwatch_logger_plugin}
/// An [AWSLoggerPlugin] for sending logs to AWS CloudWatch Logs.
/// {@endtemplate}
class AmplifyLoggingCloudWatchDart extends LoggingPluginInterface
    with AWSDebuggable {
  /// {@macro amplify_logging_cloudwatch_dart.cloudwatch_logger_plugin}
  AmplifyLoggingCloudWatchDart(
    CloudWatchPluginConfig pluginConfig, {
    RemoteLoggingConstraintProvider? remoteLoggingConstraintProvider,
    FutureOr<String> Function()? logStreamNameProvider,
    @visibleForTesting DependencyManager? dependencyManagerOverride,
  })  : _pluginConfig = pluginConfig,
        _logStreamNameProvider = logStreamNameProvider,
        _dependencyManagerOverride = dependencyManagerOverride {
    if (pluginConfig.defaultRemoteConfiguration != null &&
        _remoteLoggingConstraintProvider != null) {
      throw ConfigurationError(
        'AmplifyLoggingCloudWatch is instantiated with'
        ' optional remoteLoggingConstraintProvider constructor parameter. Logging'
        ' configuration also has defaultRemoteConfiguration',
        recoverySuggestion: 'Use either the optional'
            ' remoteLoggingConstraintProvider constructor parameter or'
            ' defaultRemoteConfiguration in the Logging configuration',
      );
    }
    remoteLoggingConstraintProvider = remoteLoggingConstraintProvider;
  }

  final CloudWatchPluginConfig _pluginConfig;
  final FutureOr<String> Function()? _logStreamNameProvider;
  final DependencyManager? _dependencyManagerOverride;
  RemoteLoggingConstraintProvider? _remoteLoggingConstraintProvider;

  late final QueuedItemStore _logStore;
  late final AppPathProvider _appPathProvider;
  late final CloudWatchLogsClient _client;
  late final CloudWatchLogStreamProvider _logStreamProvider;
  late final StreamSubscription<LogEntry> _logSubscription;

  String? _userId;
  bool _syncing = false;
  bool _enabled = false;
  StoppableTimer? _timer;
  int _retryCount = 0;
  DateTime? _retryTime;
  final _logger = AmplifyLogger.category(Category.logging);

  @override
  DependencyManager get dependencies =>
      _dependencyManagerOverride ?? super.dependencies;

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    final credentialsProvider = authProviderRepo
        .getAuthProvider(APIAuthorizationType.iam.authProviderToken);
    if (credentialsProvider == null) {
      throw ConfigurationError(
        'No credential provider found for CloudWatch Logging.',
        recoverySuggestion:
            "If you haven't already, please add amplify_auth_cognito plugin to your App.",
      );
    }
    _appPathProvider =
        dependencies.get<AppPathProvider>() ?? const DartAppPathProvider();
    _logStore = dependencies.get<QueuedItemStore>() ??
        DartQueuedItemStore(_appPathProvider);
    _client = dependencies.get<CloudWatchLogsClient>() ??
        CloudWatchLogsClient(
          region: _pluginConfig.region,
          credentialsProvider: credentialsProvider,
        );
    _logStreamProvider = dependencies.get<CloudWatchLogStreamProvider>() ??
        DefaultCloudWatchLogStreamProvider(
          logGroupName: _pluginConfig.logGroupName,
          region: _pluginConfig.region,
          credentialsProvider: credentialsProvider,
          defaultLogStreamNameProvider: _logStreamNameProvider,
        );
    _remoteLoggingConstraintProvider ??=
        (_pluginConfig.defaultRemoteConfiguration != null
            ? DefaultRemoteLoggingConstraintProvider(
                config: _pluginConfig.defaultRemoteConfiguration!,
                credentialsProvider: credentialsProvider,
                region: _pluginConfig.region,
                fileStorage: FileStorage(_appPathProvider),
              )
            : null);
    _enabled = _pluginConfig.enable;
    _timer = _pluginConfig.flushIntervalInSeconds > 0
        ? StoppableTimer(
            duration: Duration(seconds: _pluginConfig.flushIntervalInSeconds),
            callback: identifyCall(
              LoggingCategoryMethod.batchSend,
              () => _startSyncingIfNotInProgress,
            ),
            onError: _onTimerError,
          )
        : null;
    if (!_pluginConfig.enable) {
      _timer?.stop();
    }
    Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) async {
      if (event.type == AuthHubEventType.signedOut ||
          event.type == AuthHubEventType.userDeleted ||
          event.type == AuthHubEventType.sessionExpired) {
        _userId = null;
        await _clearLogs();
      }
      if (event.type == AuthHubEventType.signedIn) {
        _userId = event.payload?.userId;
      }
    });
    _logSubscription = AWSLogger().onRecord.listen(_handleLogEntry);
  }

  @override
  Future<void> reset() async {
    _timer?.stop();
    await _logSubscription.cancel();
    await _logStore.close();
    return super.reset();
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
        _logger.error('Failed to sync logs to CloudWatch.', e);
      } finally {
        await _handleFullLogStoreAfterSync(
          retryTime: nextRetry,
        );
        _syncing = false;
      }
    }
  }

  Future<void> _handleFullLogStoreAfterSync({
    DateTime? retryTime,
  }) async {
    final isLogStoreFull =
        await _logStore.isFull(_pluginConfig.localStoreMaxSizeInMB);
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
    _logger.error('Failed to sync logs to CloudWatch.', e);
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
    if (!_enabled) return false;

    final loggingConstraint = _getLoggingConstraint();
    final hasUserLogLevel = loggingConstraint.userLogLevel.containsKey(_userId);
    LogLevel? logLevel;

    if (hasUserLogLevel) {
      final userLogLevel = loggingConstraint.userLogLevel[_userId]!;
      logLevel =
          _getCategoryLogLevel(userLogLevel.categoryLogLevel, logEntry) ??
              userLogLevel.defaultLogLevel;
    } else {
      logLevel =
          _getCategoryLogLevel(loggingConstraint.categoryLogLevel, logEntry);
    }

    return logEntry.level >= (logLevel ?? loggingConstraint.defaultLogLevel);
  }

  LogLevel? _getCategoryLogLevel(
    Map<String, LogLevel> categoryLogLevel,
    LogEntry logEntry,
  ) {
    for (final entry in categoryLogLevel.entries) {
      if (logEntry.loggerName.toLowerCase().contains(entry.key.toLowerCase())) {
        return entry.value;
      }
    }
    return null;
  }

  Future<void> _handleLogEntry(LogEntry logEntry) async {
    if (!(_isLoggable(logEntry))) {
      return;
    }
    final item = logEntry.toQueuedItem();
    final isLogStoreFull =
        await _logStore.isFull(_pluginConfig.localStoreMaxSizeInMB);
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

  Future<void> _clearLogs() async {
    await _logStore.clear();
  }

  @override
  Logger logger(String namespace, {Category? category}) {
    Logger logger;
    if (category != null) {
      logger = AmplifyLogger.category(category).createChild(namespace);
    } else {
      logger = AmplifyLogger(namespace);
    }
    return logger;
  }

  /// Enables the plugin.
  @override
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
  @override
  Future<void> disable() async {
    _enabled = false;
    _timer?.stop();
    await _logStore.clear();
    _retryCount = 0;
    _retryTime = null;
  }

  /// Sends logs on-demand to CloudWatch.
  @override
  Future<void> flushLogs() async {
    await _startSyncingIfNotInProgress();
  }

  @override
  String get runtimeTypeName => 'AmplifyLoggingCloudWatchDart';

  /// {@template amplify_logging_cloudwatch_dart.plugin_key}
  /// A plugin key which can be used with `Amplify.Logging.getPlugin` to retrieve
  /// a CloudWatch-specific Logging category interface.
  /// {@endtemplate}
  static const LoggingPluginKey<AmplifyLoggingCloudWatchDart> pluginKey =
      _CloudWatchLoggerPluginKey();
}

class _CloudWatchLoggerPluginKey
    extends LoggingPluginKey<AmplifyLoggingCloudWatchDart> {
  const _CloudWatchLoggerPluginKey();

  @override
  String get runtimeTypeName => 'AmplifyLoggingCloudWatchDartKey';
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
