// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'user_pool.g.dart';

@zAwsSerializable
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
