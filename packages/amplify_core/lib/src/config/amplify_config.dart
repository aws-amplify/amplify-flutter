// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'amplify_config.g.dart';

/// {@template amplify_core.amplify_config}
/// The configuration for Amplify libraries.
/// {@endtemplate}
@zAmplifySerializable
class AmplifyConfig with AWSEquatable<AmplifyConfig>, AWSSerializable {
  /// {@macro amplify_core.amplify_config}
  const AmplifyConfig({
    this.userAgent = 'aws-amplify-cli/2.0',
    this.version = '1.0',
    this.api,
    this.analytics,
    this.auth,
    this.notifications,
    this.storage,
  });

  factory AmplifyConfig.fromJson(Map<String, Object?> json) =>
      _$AmplifyConfigFromJson(json);
  @JsonKey(name: 'UserAgent')
  final String userAgent;

  @JsonKey(name: 'Version')
  final String version;

  /// The API category configuration, if available.
  final ApiConfig? api;

  /// The Analytics category configuration, if available.
  final AnalyticsConfig? analytics;

  /// The Auth category configuration, if available.
  final AuthConfig? auth;

  /// The Notifications category configuration, if available.
  final NotificationsConfig? notifications;

  /// The Storage category configuration, if available.
  final StorageConfig? storage;

  @override
  List<Object?> get props => [
        userAgent,
        version,
        api,
        analytics,
        auth,
        notifications,
        storage,
      ];

  AmplifyConfig copyWith({
    ApiConfig? api,
    AnalyticsConfig? analytics,
    AuthConfig? auth,
    NotificationsConfig? notifications,
    StorageConfig? storage,
  }) {
    return AmplifyConfig(
      userAgent: userAgent,
      version: version,
      api: api ?? this.api,
      analytics: analytics ?? this.analytics,
      auth: auth ?? this.auth,
      notifications: notifications ?? this.notifications,
      storage: storage ?? this.storage,
    );
  }

  @internal
  AmplifyOutputs toAmplifyOutputs() {
    final appSync = auth?.awsPlugin?.appSync;
    return AmplifyOutputs(
      version: '1',
      auth: auth?.toAuthOutputs(),
      data: api?.toDataOutputs(appSync: appSync),
      restApi: api?.toRestApiOutputs(),
      analytics: analytics?.toAnalyticsOutputs(),
      notifications: notifications?.toNotificationsOutputs(),
      storage: storage?.toStorageOutputs(),
    );
  }

  @override
  Map<String, Object?> toJson() => _$AmplifyConfigToJson(this);
}
