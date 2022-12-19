// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'credentials_provider.g.dart';

typedef CognitoIdentityPoolConfig = CognitoIdentityCredentialsProvider;

class CredentialsProviders extends AWSConfigMap {
  const CredentialsProviders(
    Map<String, AWSSerializable> providers,
  ) : super(providers);

  factory CredentialsProviders.fromJson(Map<String, Object?> json) {
    final providers = json.map((key, value) {
      if (value is! Map<String, Object?>) {
        throw ArgumentError.value(
          json,
          key,
          '${value.runtimeType} is not a Map',
        );
      }
      if (key == CognitoIdentityCredentialsProvider.configKey) {
        final configs = AWSConfigMap.fromJson(
          value,
          (json) =>
              CognitoIdentityCredentialsProvider.fromJson((json as Map).cast()),
        );
        return MapEntry(key, configs);
      }
      return MapEntry(key, SerializableMap(value));
    });
    return CredentialsProviders(providers);
  }

  @override
  CredentialsProviders copy() => CredentialsProviders(configs);

  @override
  CognitoIdentityCredentialsProvider? get default$ => (this['CognitoIdentity']
          as AWSConfigMap<CognitoIdentityCredentialsProvider>?)
      ?.default$;
}

@zAwsSerializable
class CognitoIdentityCredentialsProvider
    with AWSEquatable<CognitoIdentityCredentialsProvider>, AWSSerializable {
  static const configKey = 'CognitoIdentity';

  final String poolId;
  final String region;

  const CognitoIdentityCredentialsProvider({
    required this.poolId,
    required this.region,
  });

  @override
  List<Object> get props => [poolId, region];

  factory CognitoIdentityCredentialsProvider.fromJson(
    Map<String, Object?> json,
  ) =>
      _$CognitoIdentityCredentialsProviderFromJson(json);

  CognitoIdentityCredentialsProvider copyWith({
    String? poolId,
    String? region,
  }) {
    return CognitoIdentityCredentialsProvider(
      poolId: poolId ?? this.poolId,
      region: region ?? this.region,
    );
  }

  @override
  Map<String, Object?> toJson() =>
      _$CognitoIdentityCredentialsProviderToJson(this);
}
