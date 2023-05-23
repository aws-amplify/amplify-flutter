// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_integration_test.cognito_identity_provider.model.event_context_data_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'event_context_data_type.g.dart';

/// Specifies the user context data captured at the time of an event request.
abstract class EventContextDataType
    with _i1.AWSEquatable<EventContextDataType>
    implements Built<EventContextDataType, EventContextDataTypeBuilder> {
  /// Specifies the user context data captured at the time of an event request.
  factory EventContextDataType({
    String? ipAddress,
    String? deviceName,
    String? timezone,
    String? city,
    String? country,
  }) {
    return _$EventContextDataType._(
      ipAddress: ipAddress,
      deviceName: deviceName,
      timezone: timezone,
      city: city,
      country: country,
    );
  }

  /// Specifies the user context data captured at the time of an event request.
  factory EventContextDataType.build(
          [void Function(EventContextDataTypeBuilder) updates]) =
      _$EventContextDataType;

  const EventContextDataType._();

  static const List<_i2.SmithySerializer> serializers = [
    EventContextDataTypeAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventContextDataTypeBuilder b) {}

  /// The source IP address of your user's device.
  String? get ipAddress;

  /// The user's device name.
  String? get deviceName;

  /// The user's time zone.
  String? get timezone;

  /// The user's city.
  String? get city;

  /// The user's country.
  String? get country;
  @override
  List<Object?> get props => [
        ipAddress,
        deviceName,
        timezone,
        city,
        country,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EventContextDataType');
    helper.add(
      'ipAddress',
      ipAddress,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'timezone',
      timezone,
    );
    helper.add(
      'city',
      city,
    );
    helper.add(
      'country',
      country,
    );
    return helper.toString();
  }
}

class EventContextDataTypeAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EventContextDataType> {
  const EventContextDataTypeAwsJson11Serializer()
      : super('EventContextDataType');

  @override
  Iterable<Type> get types => const [
        EventContextDataType,
        _$EventContextDataType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EventContextDataType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventContextDataTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IpAddress':
          if (value != null) {
            result.ipAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Timezone':
          if (value != null) {
            result.timezone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'City':
          if (value != null) {
            result.city = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Country':
          if (value != null) {
            result.country = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as EventContextDataType);
    final result = <Object?>[];
    if (payload.ipAddress != null) {
      result
        ..add('IpAddress')
        ..add(serializers.serialize(
          payload.ipAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deviceName != null) {
      result
        ..add('DeviceName')
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timezone != null) {
      result
        ..add('Timezone')
        ..add(serializers.serialize(
          payload.timezone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.city != null) {
      result
        ..add('City')
        ..add(serializers.serialize(
          payload.city!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.country != null) {
      result
        ..add('Country')
        ..add(serializers.serialize(
          payload.country!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
