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

library amplify_auth_cognito.cognito_identity_provider.model.device_type;

import 'package:amplify_auth_cognito/src/sdk/src/cognito_identity_provider/model/attribute_type.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'device_type.g.dart';

/// The device type.
abstract class DeviceType
    with _i1.AWSEquatable<DeviceType>
    implements Built<DeviceType, DeviceTypeBuilder> {
  /// The device type.
  factory DeviceType(
      {_i2.BuiltList<_i3.AttributeType>? deviceAttributes,
      DateTime? deviceCreateDate,
      String? deviceKey,
      DateTime? deviceLastAuthenticatedDate,
      DateTime? deviceLastModifiedDate}) {
    return _$DeviceType._(
        deviceAttributes: deviceAttributes,
        deviceCreateDate: deviceCreateDate,
        deviceKey: deviceKey,
        deviceLastAuthenticatedDate: deviceLastAuthenticatedDate,
        deviceLastModifiedDate: deviceLastModifiedDate);
  }

  /// The device type.
  factory DeviceType.build([void Function(DeviceTypeBuilder) updates]) =
      _$DeviceType;

  const DeviceType._();

  static const List<_i4.SmithySerializer> serializers = [
    _DeviceTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeviceTypeBuilder b) {}

  /// The device attributes.
  _i2.BuiltList<_i3.AttributeType>? get deviceAttributes;

  /// The creation date of the device.
  DateTime? get deviceCreateDate;

  /// The device key.
  String? get deviceKey;

  /// The date in which the device was last authenticated.
  DateTime? get deviceLastAuthenticatedDate;

  /// The last modified date of the device.
  DateTime? get deviceLastModifiedDate;
  @override
  List<Object?> get props => [
        deviceAttributes,
        deviceCreateDate,
        deviceKey,
        deviceLastAuthenticatedDate,
        deviceLastModifiedDate
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeviceType');
    helper.add('deviceAttributes', deviceAttributes);
    helper.add('deviceCreateDate', deviceCreateDate);
    helper.add('deviceKey', deviceKey);
    helper.add('deviceLastAuthenticatedDate', deviceLastAuthenticatedDate);
    helper.add('deviceLastModifiedDate', deviceLastModifiedDate);
    return helper.toString();
  }
}

class _DeviceTypeAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<DeviceType> {
  const _DeviceTypeAwsJson11Serializer() : super('DeviceType');

  @override
  Iterable<Type> get types => const [DeviceType, _$DeviceType];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  DeviceType deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = DeviceTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DeviceAttributes':
          if (value != null) {
            result.deviceAttributes.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltList, [FullType(_i3.AttributeType)]))
                as _i2.BuiltList<_i3.AttributeType>));
          }
          break;
        case 'DeviceCreateDate':
          if (value != null) {
            result.deviceCreateDate = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'DeviceKey':
          if (value != null) {
            result.deviceKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'DeviceLastAuthenticatedDate':
          if (value != null) {
            result.deviceLastAuthenticatedDate = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'DeviceLastModifiedDate':
          if (value != null) {
            result.deviceLastModifiedDate = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as DeviceType);
    final result = <Object?>[];
    if (payload.deviceAttributes != null) {
      result
        ..add('DeviceAttributes')
        ..add(serializers.serialize(payload.deviceAttributes!,
            specifiedType:
                const FullType(_i2.BuiltList, [FullType(_i3.AttributeType)])));
    }
    if (payload.deviceCreateDate != null) {
      result
        ..add('DeviceCreateDate')
        ..add(serializers.serialize(payload.deviceCreateDate!,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.deviceKey != null) {
      result
        ..add('DeviceKey')
        ..add(serializers.serialize(payload.deviceKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.deviceLastAuthenticatedDate != null) {
      result
        ..add('DeviceLastAuthenticatedDate')
        ..add(serializers.serialize(payload.deviceLastAuthenticatedDate!,
            specifiedType: const FullType(DateTime)));
    }
    if (payload.deviceLastModifiedDate != null) {
      result
        ..add('DeviceLastModifiedDate')
        ..add(serializers.serialize(payload.deviceLastModifiedDate!,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }
}
