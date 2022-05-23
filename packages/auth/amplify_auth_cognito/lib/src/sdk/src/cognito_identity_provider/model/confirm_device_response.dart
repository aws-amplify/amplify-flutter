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

library amplify_auth_cognito.cognito_identity_provider.model.confirm_device_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'confirm_device_response.g.dart';

/// Confirms the device response.
abstract class ConfirmDeviceResponse
    with _i1.AWSEquatable<ConfirmDeviceResponse>
    implements Built<ConfirmDeviceResponse, ConfirmDeviceResponseBuilder> {
  /// Confirms the device response.
  factory ConfirmDeviceResponse({bool? userConfirmationNecessary}) {
    return _$ConfirmDeviceResponse._(
        userConfirmationNecessary: userConfirmationNecessary);
  }

  /// Confirms the device response.
  factory ConfirmDeviceResponse.build(
          [void Function(ConfirmDeviceResponseBuilder) updates]) =
      _$ConfirmDeviceResponse;

  const ConfirmDeviceResponse._();

  /// Constructs a [ConfirmDeviceResponse] from a [payload] and [response].
  factory ConfirmDeviceResponse.fromResponse(
          ConfirmDeviceResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _ConfirmDeviceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConfirmDeviceResponseBuilder b) {}

  /// Indicates whether the user confirmation is necessary to confirm the device response.
  bool? get userConfirmationNecessary;
  @override
  List<Object?> get props => [userConfirmationNecessary];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConfirmDeviceResponse');
    helper.add('userConfirmationNecessary', userConfirmationNecessary);
    return helper.toString();
  }
}

class _ConfirmDeviceResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConfirmDeviceResponse> {
  const _ConfirmDeviceResponseAwsJson11Serializer()
      : super('ConfirmDeviceResponse');

  @override
  Iterable<Type> get types =>
      const [ConfirmDeviceResponse, _$ConfirmDeviceResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ConfirmDeviceResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ConfirmDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'UserConfirmationNecessary':
          if (value != null) {
            result.userConfirmationNecessary = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ConfirmDeviceResponse);
    final result = <Object?>[];
    if (payload.userConfirmationNecessary != null) {
      result
        ..add('UserConfirmationNecessary')
        ..add(serializers.serialize(payload.userConfirmationNecessary!,
            specifiedType: const FullType(bool)));
    }
    return result;
  }
}
