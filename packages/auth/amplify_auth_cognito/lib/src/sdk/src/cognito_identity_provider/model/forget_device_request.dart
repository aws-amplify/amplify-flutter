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

library amplify_auth_cognito.cognito_identity_provider.model.forget_device_request;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'forget_device_request.g.dart';

/// Represents the request to forget the device.
abstract class ForgetDeviceRequest
    with
        _i1.HttpInput<ForgetDeviceRequest>,
        _i2.AWSEquatable<ForgetDeviceRequest>
    implements Built<ForgetDeviceRequest, ForgetDeviceRequestBuilder> {
  /// Represents the request to forget the device.
  factory ForgetDeviceRequest(
      {String? accessToken, required String deviceKey}) {
    return _$ForgetDeviceRequest._(
        accessToken: accessToken, deviceKey: deviceKey);
  }

  /// Represents the request to forget the device.
  factory ForgetDeviceRequest.build(
          [void Function(ForgetDeviceRequestBuilder) updates]) =
      _$ForgetDeviceRequest;

  const ForgetDeviceRequest._();

  factory ForgetDeviceRequest.fromRequest(
          ForgetDeviceRequest payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    _ForgetDeviceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ForgetDeviceRequestBuilder b) {}

  /// The access token for the forgotten device request.
  String? get accessToken;

  /// The device key.
  String get deviceKey;
  @override
  ForgetDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [accessToken, deviceKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ForgetDeviceRequest');
    helper.add('accessToken', '***SENSITIVE***');
    helper.add('deviceKey', deviceKey);
    return helper.toString();
  }
}

class _ForgetDeviceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<ForgetDeviceRequest> {
  const _ForgetDeviceRequestAwsJson11Serializer()
      : super('ForgetDeviceRequest');

  @override
  Iterable<Type> get types =>
      const [ForgetDeviceRequest, _$ForgetDeviceRequest];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  ForgetDeviceRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ForgetDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          if (value != null) {
            result.accessToken = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as ForgetDeviceRequest);
    final result = <Object?>[
      'DeviceKey',
      serializers.serialize(payload.deviceKey,
          specifiedType: const FullType(String))
    ];
    if (payload.accessToken != null) {
      result
        ..add('AccessToken')
        ..add(serializers.serialize(payload.accessToken!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
