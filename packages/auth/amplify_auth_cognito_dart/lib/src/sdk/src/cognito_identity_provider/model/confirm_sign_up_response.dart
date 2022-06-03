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

library amplify_auth_cognito.cognito_identity_provider.model.confirm_sign_up_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_sign_up_response.g.dart';

/// Represents the response from the server for the registration confirmation.
abstract class ConfirmSignUpResponse
    with _i1.AWSEquatable<ConfirmSignUpResponse>
    implements
        Built<ConfirmSignUpResponse, ConfirmSignUpResponseBuilder>,
        _i2.EmptyPayload {
  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse() {
    return _$ConfirmSignUpResponse._();
  }

  /// Represents the response from the server for the registration confirmation.
  factory ConfirmSignUpResponse.build(
          [void Function(ConfirmSignUpResponseBuilder) updates]) =
      _$ConfirmSignUpResponse;

  const ConfirmSignUpResponse._();

  /// Constructs a [ConfirmSignUpResponse] from a [payload] and [response].
  factory ConfirmSignUpResponse.fromResponse(
          ConfirmSignUpResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ConfirmSignUpResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmSignUpResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmSignUpResponse');
    return helper.toString();
  }
}

class _ConfirmSignUpResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmSignUpResponse> {
  const _ConfirmSignUpResponseAwsJson11Serializer()
      : super('ConfirmSignUpResponse');

  @override
  Iterable<Type> get types =>
      const [ConfirmSignUpResponse, _$ConfirmSignUpResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ConfirmSignUpResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ConfirmSignUpResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
