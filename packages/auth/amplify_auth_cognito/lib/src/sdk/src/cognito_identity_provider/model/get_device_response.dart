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

library amplify_auth_cognito.cognito_identity_provider.model.get_device_response;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/device_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'get_device_response.g.dart';

/// Gets the device response.
abstract class GetDeviceResponse
    with _i1.AWSEquatable<GetDeviceResponse>
    implements Built<GetDeviceResponse, GetDeviceResponseBuilder> {
  /// Gets the device response.
  factory GetDeviceResponse({required _i2.DeviceType device}) {
    return _$GetDeviceResponse._(device: device);
  }

  /// Gets the device response.
  factory GetDeviceResponse.build(
      [void Function(GetDeviceResponseBuilder) updates]) = _$GetDeviceResponse;

  const GetDeviceResponse._();

  /// Constructs a [GetDeviceResponse] from a [payload] and [response].
  factory GetDeviceResponse.fromResponse(
          GetDeviceResponse payload, _i1.AWSBaseHttpResponse response) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    _GetDeviceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeviceResponseBuilder b) {}

  /// The device.
  _i2.DeviceType get device;
  @override
  List<Object?> get props => [device];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeviceResponse');
    helper.add('device', device);
    return helper.toString();
  }
}

class _GetDeviceResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<GetDeviceResponse> {
  const _GetDeviceResponseAwsJson11Serializer() : super('GetDeviceResponse');

  @override
  Iterable<Type> get types => const [GetDeviceResponse, _$GetDeviceResponse];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols =>
      const [_i3.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  GetDeviceResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GetDeviceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Device':
          result.device.replace((serializers.deserialize(value,
                  specifiedType: const FullType(_i2.DeviceType))
              as _i2.DeviceType));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as GetDeviceResponse);
    final result = <Object?>[
      'Device',
      serializers.serialize(payload.device,
          specifiedType: const FullType(_i2.DeviceType))
    ];
    return result;
  }
}
