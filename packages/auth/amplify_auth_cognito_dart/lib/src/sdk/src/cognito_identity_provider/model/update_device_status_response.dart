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

library amplify_auth_cognito.cognito_identity_provider.model.update_device_status_response;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_device_status_response.g.dart';

/// The response to the request to update the device status.
abstract class UpdateDeviceStatusResponse
    with _i1.AWSEquatable<UpdateDeviceStatusResponse>
    implements
        Built<UpdateDeviceStatusResponse, UpdateDeviceStatusResponseBuilder>,
        _i2.EmptyPayload {
  /// The response to the request to update the device status.
  factory UpdateDeviceStatusResponse() {
    return _$UpdateDeviceStatusResponse._();
  }

  /// The response to the request to update the device status.
  factory UpdateDeviceStatusResponse.build(
          [void Function(UpdateDeviceStatusResponseBuilder) updates]) =
      _$UpdateDeviceStatusResponse;

  const UpdateDeviceStatusResponse._();

  /// Constructs a [UpdateDeviceStatusResponse] from a [payload] and [response].
  factory UpdateDeviceStatusResponse.fromResponse(
          UpdateDeviceStatusResponse payload,
          _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    _UpdateDeviceStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeviceStatusResponseBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDeviceStatusResponse');
    return helper.toString();
  }
}

class _UpdateDeviceStatusResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<UpdateDeviceStatusResponse> {
  const _UpdateDeviceStatusResponseAwsJson11Serializer()
      : super('UpdateDeviceStatusResponse');

  @override
  Iterable<Type> get types =>
      const [UpdateDeviceStatusResponse, _$UpdateDeviceStatusResponse];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UpdateDeviceStatusResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return UpdateDeviceStatusResponseBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
