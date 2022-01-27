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

import 'package:amplify_core/src/util/equatable.dart';
import 'package:amplify_core/src/util/serializable.dart';

part 'identity_manager.g.dart';

@awsSerializable
class CognitoIdentityManager
    with AWSEquatable<CognitoIdentityManager>, AWSSerializable {
  const CognitoIdentityManager();

  @override
  List<Object?> get props => [];

  factory CognitoIdentityManager.fromJson(Map<String, Object?> json) =>
      _$CognitoIdentityManagerFromJson(json);

  @override
  Map<String, Object?> toJson() => _$CognitoIdentityManagerToJson(this);
}
