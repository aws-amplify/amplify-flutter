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

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.revoke_token_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'revoke_token_response.g.dart';

abstract class RevokeTokenResponse
    with _i1.AWSEquatable<RevokeTokenResponse>
    implements
        Built<RevokeTokenResponse, RevokeTokenResponseBuilder>,
        _i2.EmptyPayload {
  factory RevokeTokenResponse() {
    return _$RevokeTokenResponse._();
  }

  factory RevokeTokenResponse.build(
          [void Function(RevokeTokenResponseBuilder) updates]) =
      _$RevokeTokenResponse;

  const RevokeTokenResponse._();

  /// Constructs a [RevokeTokenResponse] from a [payload] and [response].
  factory RevokeTokenResponse.fromResponse(
          RevokeTokenResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _RevokeTokenResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeTokenResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RevokeTokenResponse');
    return helper.toString();
  }
}

class _RevokeTokenResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RevokeTokenResponse> {
  const _RevokeTokenResponseAwsJson11Serializer()
      : super('RevokeTokenResponse');

  @override
  Iterable<Type> get types =>
      const [RevokeTokenResponse, _$RevokeTokenResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  RevokeTokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return RevokeTokenResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
