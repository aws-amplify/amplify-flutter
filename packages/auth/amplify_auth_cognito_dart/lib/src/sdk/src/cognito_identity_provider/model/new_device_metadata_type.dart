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

library amplify_auth_cognito.cognito_identity_provider.model.new_device_metadata_type;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'new_device_metadata_type.g.dart';

/// The new device metadata type.
abstract class NewDeviceMetadataType
    with _i1.AWSEquatable<NewDeviceMetadataType>
    implements Built<NewDeviceMetadataType, NewDeviceMetadataTypeBuilder> {
  /// The new device metadata type.
  factory NewDeviceMetadataType({String? deviceGroupKey, String? deviceKey}) {
    return _$NewDeviceMetadataType._(
        deviceGroupKey: deviceGroupKey, deviceKey: deviceKey);
  }

  /// The new device metadata type.
  factory NewDeviceMetadataType.build(
          [void Function(NewDeviceMetadataTypeBuilder) updates]) =
      _$NewDeviceMetadataType;

  const NewDeviceMetadataType._();

  static const List<_i2.SmithySerializer> serializers = [
    _NewDeviceMetadataTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NewDeviceMetadataTypeBuilder b) {}

  /// The device group key.
  String? get deviceGroupKey;

  /// The device key.
  String? get deviceKey;
  @override
  List<Object?> get props => [deviceGroupKey, deviceKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NewDeviceMetadataType');
    helper.add('deviceGroupKey', deviceGroupKey);
    helper.add('deviceKey', deviceKey);
    return helper.toString();
  }
}

class _NewDeviceMetadataTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<NewDeviceMetadataType> {
  const _NewDeviceMetadataTypeAwsJson11Serializer()
      : super('NewDeviceMetadataType');

  @override
  Iterable<Type> get types =>
      const [NewDeviceMetadataType, _$NewDeviceMetadataType];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  NewDeviceMetadataType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = NewDeviceMetadataTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DeviceGroupKey':
          if (value != null) {
            result.deviceGroupKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'DeviceKey':
          if (value != null) {
            result.deviceKey = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as NewDeviceMetadataType);
    final result = <Object?>[];
    if (payload.deviceGroupKey != null) {
      result
        ..add('DeviceGroupKey')
        ..add(serializers.serialize(payload.deviceGroupKey!,
            specifiedType: const FullType(String)));
    }
    if (payload.deviceKey != null) {
      result
        ..add('DeviceKey')
        ..add(serializers.serialize(payload.deviceKey!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
