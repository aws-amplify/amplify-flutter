// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_auth_cognito_dart.cognito_identity_provider.model.device_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_auth_cognito_dart/src/sdk/src/cognito_identity_provider/model/attribute_type.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'device_type.g.dart';

/// The device type.
abstract class DeviceType
    with _i1.AWSEquatable<DeviceType>
    implements Built<DeviceType, DeviceTypeBuilder> {
  /// The device type.
  factory DeviceType({
    String? deviceKey,
    List<AttributeType>? deviceAttributes,
    DateTime? deviceCreateDate,
    DateTime? deviceLastModifiedDate,
    DateTime? deviceLastAuthenticatedDate,
  }) {
    return _$DeviceType._(
      deviceKey: deviceKey,
      deviceAttributes:
          deviceAttributes == null ? null : _i2.BuiltList(deviceAttributes),
      deviceCreateDate: deviceCreateDate,
      deviceLastModifiedDate: deviceLastModifiedDate,
      deviceLastAuthenticatedDate: deviceLastAuthenticatedDate,
    );
  }

  /// The device type.
  factory DeviceType.build([void Function(DeviceTypeBuilder) updates]) =
      _$DeviceType;

  const DeviceType._();

  static const List<_i3.SmithySerializer<DeviceType>> serializers = [
    DeviceTypeAwsJson11Serializer()
  ];

  /// The device key.
  String? get deviceKey;

  /// The device attributes.
  _i2.BuiltList<AttributeType>? get deviceAttributes;

  /// The creation date of the device.
  DateTime? get deviceCreateDate;

  /// The date and time when the item was modified. Amazon Cognito returns this timestamp in UNIX epoch time format. Your SDK might render the output in a human-readable format like ISO 8601 or a Java `Date` object.
  DateTime? get deviceLastModifiedDate;

  /// The date when the device was last authenticated.
  DateTime? get deviceLastAuthenticatedDate;
  @override
  List<Object?> get props => [
        deviceKey,
        deviceAttributes,
        deviceCreateDate,
        deviceLastModifiedDate,
        deviceLastAuthenticatedDate,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeviceType')
      ..add(
        'deviceKey',
        deviceKey,
      )
      ..add(
        'deviceAttributes',
        deviceAttributes,
      )
      ..add(
        'deviceCreateDate',
        deviceCreateDate,
      )
      ..add(
        'deviceLastModifiedDate',
        deviceLastModifiedDate,
      )
      ..add(
        'deviceLastAuthenticatedDate',
        deviceLastAuthenticatedDate,
      );
    return helper.toString();
  }
}

class DeviceTypeAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<DeviceType> {
  const DeviceTypeAwsJson11Serializer() : super('DeviceType');

  @override
  Iterable<Type> get types => const [
        DeviceType,
        _$DeviceType,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  DeviceType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DeviceKey':
          result.deviceKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceAttributes':
          result.deviceAttributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AttributeType)],
            ),
          ) as _i2.BuiltList<AttributeType>));
        case 'DeviceCreateDate':
          result.deviceCreateDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'DeviceLastModifiedDate':
          result.deviceLastModifiedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'DeviceLastAuthenticatedDate':
          result.deviceLastAuthenticatedDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeviceType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeviceType(
      :deviceKey,
      :deviceAttributes,
      :deviceCreateDate,
      :deviceLastModifiedDate,
      :deviceLastAuthenticatedDate
    ) = object;
    if (deviceKey != null) {
      result$
        ..add('DeviceKey')
        ..add(serializers.serialize(
          deviceKey,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceAttributes != null) {
      result$
        ..add('DeviceAttributes')
        ..add(serializers.serialize(
          deviceAttributes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AttributeType)],
          ),
        ));
    }
    if (deviceCreateDate != null) {
      result$
        ..add('DeviceCreateDate')
        ..add(serializers.serialize(
          deviceCreateDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (deviceLastModifiedDate != null) {
      result$
        ..add('DeviceLastModifiedDate')
        ..add(serializers.serialize(
          deviceLastModifiedDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (deviceLastAuthenticatedDate != null) {
      result$
        ..add('DeviceLastAuthenticatedDate')
        ..add(serializers.serialize(
          deviceLastAuthenticatedDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
