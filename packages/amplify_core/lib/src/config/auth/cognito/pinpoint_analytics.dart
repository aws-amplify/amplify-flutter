// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'pinpoint_analytics.g.dart';

@zAwsSerializable
class CognitoPinpointAnalyticsConfig
    with AWSEquatable<CognitoPinpointAnalyticsConfig>, AWSSerializable {
  const CognitoPinpointAnalyticsConfig({
    required this.appId,
    required this.region,
  });

  final String appId;
  final String region;

  @override
  List<Object?> get props => [appId, region];

  factory CognitoPinpointAnalyticsConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoPinpointAnalyticsConfigFromJson(json);

  CognitoPinpointAnalyticsConfig copyWith({
    String? appId,
    String? region,
  }) {
    return CognitoPinpointAnalyticsConfig(
      appId: appId ?? this.appId,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoPinpointAnalyticsConfigToJson(this);
}
