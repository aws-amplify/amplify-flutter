// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/src/flutter_lifecycle_observer.dart';
import 'package:amplify_event_enrichment/src/shared_preferences_client_id_provider.dart';
import 'package:amplify_event_enrichment_dart/amplify_event_enrichment_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, Result;
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client_flutter}
/// Flutter wrapper that creates an [EventEnrichmentClient] with
/// platform-specific providers wired automatically:
///
/// - [PlatformDeviceMetadataProvider] for device metadata (OS name/version)
/// - [SharedPreferencesClientIdProvider] for the persistent client ID
/// - [FlutterLifecycleObserver] for automatic session lifecycle tracking
///
/// Both providers are injectable via [create]. With
/// [EventEnrichmentClientOptions.autoSessionTracking] disabled, no lifecycle
/// observer is installed and the first [record] call starts a session lazily.
///
/// ## Usage
///
/// ```dart
/// final client = await EventEnrichmentClientFlutter.create(
///   appId: 'my-app-id',
///   sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
///   initialUserId: 'user-1',
///   initialGlobalAttributes: const {'env': 'prod'},
/// );
///
/// final result = await client.record('button_clicked');
/// ```
/// {@endtemplate}
class EventEnrichmentClientFlutter {
  EventEnrichmentClientFlutter._(this._delegate, this._lifecycleObserver);

  /// {@macro amplify_event_enrichment.event_enrichment_client_flutter}
  ///
  /// [initialUserId], [initialGlobalAttributes] and [initialGlobalMetrics]
  /// are applied before the automatic session start, so the launch
  /// [zSessionStartEventType] event carries them.
  static Future<EventEnrichmentClientFlutter> create({
    required String appId,
    required SdkMetadata sdkMetadata,
    AppMetadata? appMetadata,
    String? initialUserId,
    Map<String, String>? initialGlobalAttributes,
    Map<String, double>? initialGlobalMetrics,
    DeviceMetadataProvider? deviceMetadataProvider,
    ClientIdProvider? clientIdProvider,
    EventEnrichmentClientOptions? options,
    EnrichedEventSender? sender,
  }) async {
    assert(
      appMetadata == null || appMetadata.appId == appId,
      'appMetadata.appId ("${appMetadata.appId}") does not match the appId '
      '"$appId". When both are provided they must be the same value.',
    );
    final metadataProvider =
        deviceMetadataProvider ?? const PlatformDeviceMetadataProvider();
    final idProvider =
        clientIdProvider ?? const SharedPreferencesClientIdProvider();
    final logger = AmplifyLogging.logger('EventEnrichmentClientFlutter');

    // A provider failure degrades gracefully rather than throwing out of
    // create().
    var deviceMetadata = const DeviceMetadata();
    try {
      deviceMetadata = await metadataProvider.getDeviceMetadata();
    } on Object catch (e, st) {
      logger.warn(
        'Failed to resolve device metadata; continuing with empty metadata.',
        e,
        st,
      );
    }

    String clientId;
    try {
      clientId = await idProvider.getClientId();
    } on Object catch (e, st) {
      clientId = const Uuid().v4();
      logger.warn(
        'Failed to resolve a persistent client ID; using an ephemeral one.',
        e,
        st,
      );
    }

    final delegate = EventEnrichmentClient(
      appMetadata: appMetadata ?? AppMetadata(appId: appId),
      deviceMetadata: deviceMetadata,
      sdkMetadata: sdkMetadata,
      clientId: clientId,
      initialUserId: initialUserId,
      initialGlobalAttributes: initialGlobalAttributes,
      initialGlobalMetrics: initialGlobalMetrics,
      options: options,
      sender: sender,
    );

    FlutterLifecycleObserver? lifecycleObserver;
    final opts = options ?? const EventEnrichmentClientOptions();
    if (opts.autoSessionTracking) {
      lifecycleObserver = FlutterLifecycleObserver(
        sessionManager: delegate.sessionManager,
      );
    }

    return EventEnrichmentClientFlutter._(delegate, lifecycleObserver);
  }

  final EventEnrichmentClient _delegate;
  final FlutterLifecycleObserver? _lifecycleObserver;

  /// Whether the client has been closed.
  bool get isClosed => _delegate.isClosed;

  /// Records an event and returns the enriched result. Never throws; see
  /// [EventEnrichmentClient.record].
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) => _delegate.record(eventType, attributes: attributes, metrics: metrics);

  /// Starts a new session, ending any already running. See
  /// [EventEnrichmentClient.startSession].
  Future<void> startSession() => _delegate.startSession();

  /// Stops the current session; the lifecycle observer will not start a new
  /// one until an event is recorded or [startSession] is called. See
  /// [EventEnrichmentClient.stopSession].
  Future<void> stopSession() => _delegate.stopSession();

  /// Called when the app moves to background. Only needed when
  /// [EventEnrichmentClientOptions.autoSessionTracking] is `false`; otherwise
  /// [FlutterLifecycleObserver] calls this.
  void handleAppPaused() => _delegate.handleAppPaused();

  /// Called when the app returns to foreground. Only needed when
  /// [EventEnrichmentClientOptions.autoSessionTracking] is `false`; otherwise
  /// [FlutterLifecycleObserver] calls this.
  void handleAppResumed() => _delegate.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events. Use
  /// `initialUserId` on [create] to have the launch session event carry it.
  void setUserId(String? userId) => _delegate.setUserId(userId);

  /// Adds a global attribute stamped on every subsequent event.
  void addGlobalAttribute(String key, String value) =>
      _delegate.addGlobalAttribute(key, value);

  /// Removes a global attribute.
  void removeGlobalAttribute(String key) =>
      _delegate.removeGlobalAttribute(key);

  /// Adds a global metric stamped on every subsequent event.
  void addGlobalMetric(String key, double value) =>
      _delegate.addGlobalMetric(key, value);

  /// Removes a global metric.
  void removeGlobalMetric(String key) => _delegate.removeGlobalMetric(key);

  /// Ends any running session, removes the lifecycle observer, and releases
  /// resources. See [EventEnrichmentClient.close].
  Future<void> close() async {
    _lifecycleObserver?.dispose();
    await _delegate.close();
  }
}
