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
/// For richer device info (manufacturer, model), supply a custom
/// [DeviceMetadataProvider] via the `deviceMetadataProvider` parameter.
///
/// ## Usage
///
/// ```dart
/// final client = await EventEnrichmentClientFlutter.create(
///   appId: 'my-app-id',
///   sdkMetadata: SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
/// );
///
/// final event = client.record('button_clicked');
/// ```
/// {@endtemplate}
class EventEnrichmentClientFlutter {
  EventEnrichmentClientFlutter._(this._delegate, this._lifecycleObserver);

  /// {@macro amplify_event_enrichment.event_enrichment_client_flutter}
  ///
  /// Resolves device metadata and client ID from the platform, then creates
  /// an [EventEnrichmentClient] with automatic lifecycle tracking.
  static Future<EventEnrichmentClientFlutter> create({
    required String appId,
    required SdkMetadata sdkMetadata,
    AppMetadata? appMetadata,
    DeviceMetadataProvider? deviceMetadataProvider,
    EventEnrichmentClientOptions? options,
    EventSink? sink,
  }) async {
    assert(
      appMetadata == null || appMetadata.appId == appId,
      'appMetadata.appId ("${appMetadata.appId}") does not match the appId '
      '"$appId". When both are provided they must be the same value.',
    );
    final metadataProvider =
        deviceMetadataProvider ?? const PlatformDeviceMetadataProvider();
    const clientIdProvider = SharedPreferencesClientIdProvider();
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
      clientId = await clientIdProvider.getClientId();
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
      options: options,
      sink: sink,
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
  Result<EnrichedEvent> record(
    String eventType, {
    Map<String, String>? attributes,
    Map<String, double>? metrics,
  }) => _delegate.record(eventType, attributes: attributes, metrics: metrics);

  /// Sets the user identifier stamped on subsequent events.
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

  /// Releases resources, stops session tracking, and removes lifecycle observer.
  void close() {
    _lifecycleObserver?.dispose();
    _delegate.close();
  }
}
