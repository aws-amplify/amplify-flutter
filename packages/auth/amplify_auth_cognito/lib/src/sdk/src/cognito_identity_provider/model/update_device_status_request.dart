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

library amplify_auth_cognito.cognito_identity_provider.model.update_device_status_request;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_remembered_status_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_device_status_request.g.dart';

/// Represents the request to update the device status.
abstract class UpdateDeviceStatusRequest
    with
        _i1.HttpInput<UpdateDeviceStatusRequest>,
        _i2.AWSEquatable<UpdateDeviceStatusRequest>
    implements
        Built<UpdateDeviceStatusRequest, UpdateDeviceStatusRequestBuilder> {
  /// Represents the request to update the device status.
  factory UpdateDeviceStatusRequest(
      {required String accessToken,
      required String deviceKey,
      _i3.DeviceRememberedStatusType? deviceRememberedStatus}) {
    return _$UpdateDeviceStatusRequest._(
        accessToken: accessToken,
        deviceKey: deviceKey,
        deviceRememberedStatus: deviceRememberedStatus);
  }

  /// Represents the request to update the device status.
  factory UpdateDeviceStatusRequest.build(
          [void Function(UpdateDeviceStatusRequestBuilder) updates]) =
      _$UpdateDeviceStatusRequest;

  const UpdateDeviceStatusRequest._();

  factory UpdateDeviceStatusRequest.fromRequest(
          UpdateDeviceStatusRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _UpdateDeviceStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateDeviceStatusRequestBuilder b) {}

  /// The access token.
  String get accessToken;

  /// The device key.
  String get deviceKey;

  /// The status of whether a device is remembered.
  _i3.DeviceRememberedStatusType? get deviceRememberedStatus;
  @override
  UpdateDeviceStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, deviceKey, deviceRememberedStatus];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateDeviceStatusRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('deviceKey', deviceKey);
    helper.add('deviceRememberedStatus', deviceRememberedStatus);
    return helper.toString();
  }
}

class _UpdateDeviceStatusRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<UpdateDeviceStatusRequest> {
  const _UpdateDeviceStatusRequestAwsJson11Serializer()
      : super('UpdateDeviceStatusRequest');

  @override
  Iterable<Type> get types =>
      const [UpdateDeviceStatusRequest, _$UpdateDeviceStatusRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  UpdateDeviceStatusRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = UpdateDeviceStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          result.accessToken = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'DeviceRememberedStatus':
          if (value != null) {
            result.deviceRememberedStatus = (serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.DeviceRememberedStatusType))
                as _i3.DeviceRememberedStatusType);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as UpdateDeviceStatusRequest);
    final result = <Object?>[
      'AccessToken',
      serializers.serialize(payload.accessToken,
          specifiedType: const FullType(String)),
      'DeviceKey',
      serializers.serialize(payload.deviceKey,
          specifiedType: const FullType(String))
    ];
    if (payload.deviceRememberedStatus != null) {
      result
        ..add('DeviceRememberedStatus')
        ..add(serializers.serialize(payload.deviceRememberedStatus!,
            specifiedType: const FullType(_i3.DeviceRememberedStatusType)));
    }
    return result;
  }
}
