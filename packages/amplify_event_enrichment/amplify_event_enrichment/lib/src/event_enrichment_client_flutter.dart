// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/src/flutter_lifecycle_observer.dart';
import 'package:amplify_event_enrichment/src/shared_preferences_client_id_provider.dart';
import 'package:amplify_event_enrichment_dart/amplify_event_enrichment.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    show AmplifyLogging, Result;
import 'package:uuid/uuid.dart';

/// {@template amplify_event_enrichment.event_enrichment_client_flutter}
/// Flutter convenience wrapper that creates an [EventEnrichmentClient] with
/// platform-specific providers wired automatically.
///
/// Uses:
/// - [PlatformDeviceMetadataProvider] for device metadata (OS name/version)
/// - [SharedPreferencesClientIdProvider] for persistent client ID
/// - [FlutterLifecycleObserver] for automatic session lifecycle tracking
///
/// Both providers are injectable: pass `deviceMetadataProvider` for richer
/// device info (manufacturer, model), or `clientIdProvider` to source the
/// client ID from your own store.
///
/// ## Sessions
///
/// Every event carries a session, and this wrapper exposes the same manual
/// controls as the underlying client ([startSession], [stopSession],
/// [handleAppPaused], [handleAppResumed]).
///
/// You do not have to call them. With the default
/// [EventEnrichmentClientOptions.autoSessionTracking] of `true`, a session
/// starts up front and follows app foreground/background transitions. With
/// `autoSessionTracking` set to `false`, no session starts up front and no
/// lifecycle observer is installed, but the first [record] call lazily starts
/// one. Use the manual controls to define session boundaries yourself, or to
/// feed lifecycle transitions in when the observer is not installed.
///
/// [stopSession] is an explicit end to tracking: the lifecycle observer will
/// not start a new session on the next foreground after it. Recording an event
/// starts one again.
///
/// A [zSessionStartEventType] event is emitted through the configured
/// [EnrichedEventSender] when a session starts, and a [zSessionStopEventType]
/// event carrying its stop timestamp and duration when it ends. Both use the
/// event types legacy Analytics used. See [startSession] and [stopSession].
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
  /// Resolves device metadata and client ID from the platform, then creates
  /// an [EventEnrichmentClient] with automatic lifecycle tracking.
  ///
  /// [initialUserId], [initialGlobalAttributes] and [initialGlobalMetrics] are
  /// applied before the session that
  /// [EventEnrichmentClientOptions.autoSessionTracking] starts, so the launch
  /// [zSessionStartEventType] event carries them. Setting them afterwards with
  /// [setUserId] or [addGlobalAttribute] cannot: that event has already gone
  /// out.
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

    // Resolve device metadata and client ID independently so a failure in
    // either provider degrades gracefully rather than throwing out of create().
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

  /// Records an event and returns the enriched result.
  ///
  /// Awaits the configured sender and never throws; delivery failures come
  /// back as an error [Result]. See `EventEnrichmentClient.record`.
  Future<Result<EnrichedEvent>> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) => _delegate.record(eventType, attributes: attributes, metrics: metrics);

  /// Starts a new session manually and emits a [zSessionStartEventType] event
  /// for it.
  ///
  /// Only needed when you want an explicit session boundary. Recording works
  /// without it: see [EventEnrichmentClientOptions.autoSessionTracking].
  ///
  /// A session already running is ended first, which emits its
  /// [zSessionStopEventType] event before the start. The returned future
  /// completes once both events have been handed to the [EnrichedEventSender].
  Future<void> startSession() => _delegate.startSession();

  /// Stops the current session and emits a [zSessionStopEventType] event
  /// carrying its stop timestamp and duration, so session length reaches the
  /// [EnrichedEventSender] rather than being computed and dropped.
  ///
  /// The returned future completes once the event has been handed to the
  /// sender; a sender failure is logged and never thrown.
  ///
  /// This is also an explicit end to session tracking. The lifecycle observer
  /// will not start a new session when the app next returns to the foreground,
  /// so a session you ended stays ended. Recording an event still lazily starts
  /// a fresh session, and [startSession] resumes normal lifecycle behaviour.
  Future<void> stopSession() => _delegate.stopSession();

  /// Called when the app moves to background.
  ///
  /// Only needed when [EventEnrichmentClientOptions.autoSessionTracking] is
  /// `false`; otherwise [FlutterLifecycleObserver] calls this for you.
  ///
  /// If the session timeout passes before the app returns, the session ends and
  /// its [zSessionStopEventType] event is emitted with no caller to await it,
  /// so a sender failure there surfaces only in the logs.
  void handleAppPaused() => _delegate.handleAppPaused();

  /// Called when the app returns to foreground.
  ///
  /// Only needed when [EventEnrichmentClientOptions.autoSessionTracking] is
  /// `false`; otherwise [FlutterLifecycleObserver] calls this for you.
  ///
  /// Resumes a paused session, or ends it and starts a new one if the app was
  /// backgrounded for longer than the session timeout. Does nothing after an
  /// explicit [stopSession].
  ///
  /// Resuming emits nothing, since it is the same session. A restart emits the
  /// old session's [zSessionStopEventType] event and then the new session's
  /// [zSessionStartEventType] event, with no caller to await them.
  void handleAppResumed() => _delegate.handleAppResumed();

  /// Sets the user identifier stamped on subsequent events.
  ///
  /// Pass `initialUserId` to [create] instead to have the launch
  /// [zSessionStartEventType] event carry it.
  void setUserId(String? userId) => _delegate.setUserId(userId);

  /// Adds a global attribute stamped on every subsequent event.
  ///
  /// Pass `initialGlobalAttributes` to [create] instead to have the launch
  /// [zSessionStartEventType] event carry it.
  void addGlobalAttribute(String key, String value) =>
      _delegate.addGlobalAttribute(key, value);

  /// Removes a global attribute.
  void removeGlobalAttribute(String key) =>
      _delegate.removeGlobalAttribute(key);

  /// Adds a global metric stamped on every subsequent event.
  ///
  /// Pass `initialGlobalMetrics` to [create] instead to have the launch
  /// [zSessionStartEventType] event carry it.
  void addGlobalMetric(String key, double value) =>
      _delegate.addGlobalMetric(key, value);

  /// Removes a global metric.
  void removeGlobalMetric(String key) => _delegate.removeGlobalMetric(key);

  /// Releases resources, stops session tracking, and removes lifecycle
  /// observer.
  ///
  /// A session still running is ended first, so its [zSessionStopEventType]
  /// event reaches the [EnrichedEventSender] before the client goes away. A
  /// session that already ended does not emit a second one.
  Future<void> close() async {
    _lifecycleObserver?.dispose();
    await _delegate.close();
  }
}
