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
import 'package:aws_common/aws_common.dart';

part 'user_pool.g.dart';

@awsSerializable
class CognitoUserPoolConfig
    with AWSEquatable<CognitoUserPoolConfig>, AWSSerializable {
  final String poolId;
  final String appClientId;
  final String? appClientSecret;
  final String region;
  final CognitoOAuthConfig? hostedUI;
  final String? endpoint;

  const CognitoUserPoolConfig({
    required this.poolId,
    required this.appClientId,
    this.appClientSecret,
    required this.region,
    this.hostedUI,
    this.endpoint,
  });

  @override
  List<Object?> get props => [
        poolId,
        appClientId,
        appClientSecret,
        region,
        hostedUI,
        endpoint,
      ];

  factory CognitoUserPoolConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoUserPoolConfigFromJson(json);

  CognitoUserPoolConfig copyWith({
    String? poolId,
    String? appClientId,
    String? appClientSecret,
    String? region,
    CognitoOAuthConfig? hostedUI,
    String? endpoint,
  }) {
    return CognitoUserPoolConfig(
      poolId: poolId ?? this.poolId,
      appClientId: appClientId ?? this.appClientId,
      appClientSecret: appClientSecret ?? this.appClientSecret,
      region: region ?? this.region,
      hostedUI: hostedUI ?? this.hostedUI,
      endpoint: endpoint ?? this.endpoint,
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoUserPoolConfigToJson(this);
}
