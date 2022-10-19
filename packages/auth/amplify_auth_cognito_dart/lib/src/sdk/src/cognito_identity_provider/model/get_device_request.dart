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

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_auth_cognito_dart.cognito_identity_provider.model.get_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_device_request.g.dart';

/// Represents the request to get the device.
abstract class GetDeviceRequest
    with _i1.HttpInput<GetDeviceRequest>, _i2.AWSEquatable<GetDeviceRequest>
    implements Built<GetDeviceRequest, GetDeviceRequestBuilder> {
  /// Represents the request to get the device.
  factory GetDeviceRequest({
    String? accessToken,
    required String deviceKey,
  }) {
    return _$GetDeviceRequest._(
      accessToken: accessToken,
      deviceKey: deviceKey,
    );
  }

  /// Represents the request to get the device.
  factory GetDeviceRequest.build(
      [void Function(GetDeviceRequestBuilder) updates]) = _$GetDeviceRequest;

  const GetDeviceRequest._();

  factory GetDeviceRequest.fromRequest(
    GetDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetDeviceRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetDeviceRequestBuilder b) {}

  /// A valid access token that Amazon Cognito issued to the user whose device information you want to request.
  String? get accessToken;

  /// The device key.
  String get deviceKey;
  @override
  GetDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accessToken,
        deviceKey,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetDeviceRequest');
    helper.add(
      'accessToken',
      '***SENSITIVE***',
    );
    helper.add(
      'deviceKey',
      deviceKey,
    );
    return helper.toString();
  }
}

class GetDeviceRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<GetDeviceRequest> {
  const GetDeviceRequestAwsJson11Serializer() : super('GetDeviceRequest');

  @override
  Iterable<Type> get types => const [
        GetDeviceRequest,
        _$GetDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccessToken':
          if (value != null) {
            result.accessToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as GetDeviceRequest);
    final result = <Object?>[
      'DeviceKey',
      serializers.serialize(
        payload.deviceKey,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.accessToken != null) {
      result
        ..add('AccessToken')
        ..add(serializers.serialize(
          payload.accessToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
