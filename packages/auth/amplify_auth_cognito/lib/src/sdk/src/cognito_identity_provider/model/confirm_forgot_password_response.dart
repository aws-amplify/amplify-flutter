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

library amplify_auth_cognito.cognito_identity_provider.model.confirm_forgot_password_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_forgot_password_response.g.dart';

/// The response from the server that results from a user's request to retrieve a forgotten password.
abstract class ConfirmForgotPasswordResponse
    with
        _i1.AWSEquatable<ConfirmForgotPasswordResponse>
    implements
        Built<ConfirmForgotPasswordResponse,
            ConfirmForgotPasswordResponseBuilder>,
        _i2.EmptyPayload {
  /// The response from the server that results from a user's request to retrieve a forgotten password.
  factory ConfirmForgotPasswordResponse() {
    return _$ConfirmForgotPasswordResponse._();
  }

  /// The response from the server that results from a user's request to retrieve a forgotten password.
  factory ConfirmForgotPasswordResponse.build(
          [void Function(ConfirmForgotPasswordResponseBuilder) updates]) =
      _$ConfirmForgotPasswordResponse;

  const ConfirmForgotPasswordResponse._();

  /// Constructs a [ConfirmForgotPasswordResponse] from a [payload] and [response].
  factory ConfirmForgotPasswordResponse.fromResponse(
          ConfirmForgotPasswordResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ConfirmForgotPasswordResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmForgotPasswordResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmForgotPasswordResponse');
    return helper.toString();
  }
}

class _ConfirmForgotPasswordResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmForgotPasswordResponse> {
  const _ConfirmForgotPasswordResponseAwsJson11Serializer()
      : super('ConfirmForgotPasswordResponse');

  @override
  Iterable<Type> get types =>
      const [ConfirmForgotPasswordResponse, _$ConfirmForgotPasswordResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ConfirmForgotPasswordResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ConfirmForgotPasswordResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
