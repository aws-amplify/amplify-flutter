// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'identity_manager.g.dart';

@zAwsSerializable
class CognitoIdentityManager
    with AWSEquatable<CognitoIdentityManager>, AWSSerializable {
  const CognitoIdentityManager();

  factory CognitoIdentityManager.fromJson(Map<String, Object?> json) =>
      _$CognitoIdentityManagerFromJson(json);

  @override
  List<Object?> get props => [];

  @override
  Map<String, Object?> toJson() => _$CognitoIdentityManagerToJson(this);
}
