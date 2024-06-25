// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:meta/meta.dart';

part 'user_pool.g.dart';

@zAwsSerializable
class CognitoUserPoolConfig
    with AWSEquatable<CognitoUserPoolConfig>, AWSSerializable {
  const CognitoUserPoolConfig({
    required this.poolId,
    required this.appClientId,
    this.appClientSecret,
    required this.region,
    this.hostedUI,
    this.endpoint,
  });

  @internal
  factory CognitoUserPoolConfig.fromAuthOutputs(AuthOutputs authOutputs) {
    if (authOutputs.userPoolId == null) {
      throw ConfigurationError(
        'Invalid Cognito User Pool config: No User Pool Id found',
      );
    }
    if (authOutputs.userPoolClientId == null) {
      throw ConfigurationError(
        'Invalid Cognito User Pool config: No User Pool Client Id found',
      );
    }
    return CognitoUserPoolConfig(
      poolId: authOutputs.userPoolId!,
      appClientId: authOutputs.userPoolClientId!,
      appClientSecret: authOutputs.appClientSecret,
      region: authOutputs.awsRegion,
      hostedUI: authOutputs.oauth == null
          ? null
          : CognitoOAuthConfig.fromAuthOutputs(authOutputs),
    );
  }

  factory CognitoUserPoolConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoUserPoolConfigFromJson(json);
  final String poolId;
  final String appClientId;
  final String? appClientSecret;
  final String region;
  final CognitoOAuthConfig? hostedUI;
  final String? endpoint;

  @override
  List<Object?> get props => [
        poolId,
        appClientId,
        appClientSecret,
        region,
        hostedUI,
        endpoint,
      ];

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
