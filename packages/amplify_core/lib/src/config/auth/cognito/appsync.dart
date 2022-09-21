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

part 'appsync.g.dart';

@zAwsSerializable
class CognitoAppSyncConfig
    with AWSEquatable<CognitoAppSyncConfig>, AWSSerializable {
  const CognitoAppSyncConfig({
    required this.apiUrl,
    required this.region,
    required this.authMode,
    this.apiKey,
    required this.clientDatabasePrefix,
  });

  final String apiUrl;
  final String region;
  final APIAuthorizationType authMode;
  final String? apiKey;
  final String clientDatabasePrefix;

  @override
  List<Object?> get props => [
        apiUrl,
        region,
        authMode,
        apiKey,
        clientDatabasePrefix,
      ];

  factory CognitoAppSyncConfig.fromJson(Map<String, Object?> json) =>
      _$CognitoAppSyncConfigFromJson(json);

  CognitoAppSyncConfig copyWith({
    String? apiUrl,
    String? region,
    APIAuthorizationType? authMode,
    String? apiKey,
    String? clientDatabasePrefix,
  }) {
    return CognitoAppSyncConfig(
      apiUrl: apiUrl ?? this.apiUrl,
      region: region ?? this.region,
      authMode: authMode ?? this.authMode,
      apiKey: apiKey ?? this.apiKey,
      clientDatabasePrefix: clientDatabasePrefix ?? this.clientDatabasePrefix,
    );
  }

  @override
  Map<String, Object?> toJson() => _$CognitoAppSyncConfigToJson(this);
}
