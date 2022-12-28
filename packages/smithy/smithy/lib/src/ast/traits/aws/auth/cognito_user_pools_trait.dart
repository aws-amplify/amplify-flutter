// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
