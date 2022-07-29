// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'cognito_user_pools_trait.g.dart';

/// Configures an Amazon Cognito User Pools auth scheme.
@ShapeIdConverter()
@JsonSerializable()
class CognitoUserPoolsTrait
    with AWSSerializable
    implements Trait<CognitoUserPoolsTrait> {
  const CognitoUserPoolsTrait({
    this.providerArns = const [],
  });

  factory CognitoUserPoolsTrait.fromJson(Object? json) =>
      _$CognitoUserPoolsTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.auth', shape: 'cognitoUserPools');

  /// The list of provider ARNs.
  final List<String> providerArns;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [providerArns];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$CognitoUserPoolsTraitToJson(this);

  @override
  CognitoUserPoolsTrait get value => this;
}
