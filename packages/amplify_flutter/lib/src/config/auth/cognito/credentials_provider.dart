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

import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/config_map.dart';

part 'credentials_provider.g.dart';

class CredentialsProvider
    extends AWSConfigMap<CognitoIdentityCredentialsProvider> {
  const CredentialsProvider(
      Map<String, CognitoIdentityCredentialsProvider> providers)
      : super(providers);

  factory CredentialsProvider.fromJson(Map<String, Object?> json) {
    final cognitoIdentityMap = json['CognitoIdentity'];
    if (cognitoIdentityMap is! Map<String, Object?>) {
      return const CredentialsProvider({});
    }
    final configMap = AWSConfigMap<CognitoIdentityCredentialsProvider>.fromJson(
      cognitoIdentityMap,
      (json) =>
          CognitoIdentityCredentialsProvider.fromJson((json as Map).cast()),
    );
    return CredentialsProvider(configMap.all);
  }

  @override
  Map<String, Object?> toJson() => {
        'CredentialsProvider': super.toJson(),
      };
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

  @override
  Map<String, Object?> toJson() =>
      _$CognitoIdentityCredentialsProviderToJson(this);
}
