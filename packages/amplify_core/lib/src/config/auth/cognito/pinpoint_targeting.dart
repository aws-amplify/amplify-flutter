// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'pinpoint_targeting.g.dart';

@zAwsSerializable
class CognitoPinpointTargetingConfig
    with AWSEquatable<CognitoPinpointTargetingConfig>, AWSSerializable {
  const CognitoPinpointTargetingConfig({
    required this.region,
  });

  final String region;

  @override
  List<Object?> get props => [region];

  factory CognitoPinpointTargetingConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoPinpointTargetingConfigFromJson(json);

  CognitoPinpointTargetingConfig copyWith({
    String? region,
  }) {
    return CognitoPinpointTargetingConfig(region: region ?? this.region);
  }

  @override
  Map<String, Object?> toJson() => _$CognitoPinpointTargetingConfigToJson(this);
}
