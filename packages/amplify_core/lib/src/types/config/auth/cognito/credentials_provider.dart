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

import 'package:amplify_core/src/types/config/config_map.dart';
import 'package:aws_common/aws_common.dart';

part 'credentials_provider.g.dart';

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
      if (key == 'CognitoIdentity') {
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

@awsSerializable
class CognitoIdentityCredentialsProvider
    with AWSEquatable<CognitoIdentityCredentialsProvider>, AWSSerializable {
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
