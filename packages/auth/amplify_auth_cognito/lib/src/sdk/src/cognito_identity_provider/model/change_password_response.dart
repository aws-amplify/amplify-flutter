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

library amplify_auth_cognito.cognito_identity_provider.model.change_password_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'change_password_response.g.dart';

/// The response from the server to the change password request.
abstract class ChangePasswordResponse
    with _i1.AWSEquatable<ChangePasswordResponse>
    implements
        Built<ChangePasswordResponse, ChangePasswordResponseBuilder>,
        _i2.EmptyPayload {
  /// The response from the server to the change password request.
  factory ChangePasswordResponse() {
    return _$ChangePasswordResponse._();
  }

  /// The response from the server to the change password request.
  factory ChangePasswordResponse.build(
          [void Function(ChangePasswordResponseBuilder) updates]) =
      _$ChangePasswordResponse;

  const ChangePasswordResponse._();

  /// Constructs a [ChangePasswordResponse] from a [payload] and [response].
  factory ChangePasswordResponse.fromResponse(
          ChangePasswordResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ChangePasswordResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangePasswordResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ChangePasswordResponse');
    return helper.toString();
  }
}

class _ChangePasswordResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ChangePasswordResponse> {
  const _ChangePasswordResponseAwsJson11Serializer()
      : super('ChangePasswordResponse');

  @override
  Iterable<Type> get types =>
      const [ChangePasswordResponse, _$ChangePasswordResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ChangePasswordResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ChangePasswordResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
