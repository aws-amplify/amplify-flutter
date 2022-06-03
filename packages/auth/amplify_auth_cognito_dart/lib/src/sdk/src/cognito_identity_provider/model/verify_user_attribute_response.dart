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

library amplify_auth_cognito.cognito_identity_provider.model.verify_user_attribute_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'verify_user_attribute_response.g.dart';

/// A container representing the response from the server from the request to verify user attributes.
abstract class VerifyUserAttributeResponse
    with _i1.AWSEquatable<VerifyUserAttributeResponse>
    implements
        Built<VerifyUserAttributeResponse, VerifyUserAttributeResponseBuilder>,
        _i2.EmptyPayload {
  /// A container representing the response from the server from the request to verify user attributes.
  factory VerifyUserAttributeResponse() {
    return _$VerifyUserAttributeResponse._();
  }

  /// A container representing the response from the server from the request to verify user attributes.
  factory VerifyUserAttributeResponse.build(
          [void Function(VerifyUserAttributeResponseBuilder) updates]) =
      _$VerifyUserAttributeResponse;

  const VerifyUserAttributeResponse._();

  /// Constructs a [VerifyUserAttributeResponse] from a [payload] and [response].
  factory VerifyUserAttributeResponse.fromResponse(
          VerifyUserAttributeResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _VerifyUserAttributeResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VerifyUserAttributeResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VerifyUserAttributeResponse');
    return helper.toString();
  }
}

class _VerifyUserAttributeResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<VerifyUserAttributeResponse> {
  const _VerifyUserAttributeResponseAwsJson11Serializer()
      : super('VerifyUserAttributeResponse');

  @override
  Iterable<Type> get types =>
      const [VerifyUserAttributeResponse, _$VerifyUserAttributeResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  VerifyUserAttributeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return VerifyUserAttributeResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
