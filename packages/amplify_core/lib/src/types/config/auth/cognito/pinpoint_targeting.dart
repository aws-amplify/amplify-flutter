/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/src/util/equatable.dart';
import 'package:amplify_core/src/util/serializable.dart';

part 'pinpoint_targeting.g.dart';

@awsSerializable
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
