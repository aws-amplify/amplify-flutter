//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'amplify_config.g.dart';

/// {@template amplify_core.amplify_config}
/// The configuration for Amplify libraries.
/// {@endtemplate}
@amplifySerializable
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
