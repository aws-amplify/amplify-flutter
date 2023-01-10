// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'amplify_config.g.dart';

/// {@template amplify_core.amplify_config}
/// The configuration for Amplify libraries.
/// {@endtemplate}
@zAmplifySerializable
class AmplifyConfig with AWSEquatable<AmplifyConfig>, AWSSerializable {
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

  /// The Storage category configuration, if available.
  final StorageConfig? storage;

  /// {@macro amplify_core.amplify_config}
  const AmplifyConfig({
    this.userAgent = 'aws-amplify-cli/2.0',
    this.version = '1.0',
    this.api,
    this.analytics,
    this.auth,
    this.storage,
  });

  @override
  List<Object?> get props => [
        userAgent,
        version,
        api,
        analytics,
        auth,
        storage,
      ];

  factory AmplifyConfig.fromJson(Map<String, Object?> json) =>
      _$AmplifyConfigFromJson(json);

  AmplifyConfig copyWith({
    ApiConfig? api,
    AnalyticsConfig? analytics,
    AuthConfig? auth,
    StorageConfig? storage,
  }) {
    return AmplifyConfig(
      userAgent: userAgent,
      version: version,
      api: api ?? this.api,
      analytics: analytics ?? this.analytics,
      auth: auth ?? this.auth,
      storage: storage ?? this.storage,
    );
  }

  @override
  Map<String, Object?> toJson() => _$AmplifyConfigToJson(this);
}
