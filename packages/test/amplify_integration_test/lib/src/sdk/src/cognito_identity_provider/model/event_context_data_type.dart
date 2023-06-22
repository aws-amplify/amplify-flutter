// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<EventContextDataType>> serializers = [
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
    final helper = newBuiltValueToStringHelper('EventContextDataType')
      ..add(
        'ipAddress',
        ipAddress,
      )
      ..add(
        'deviceName',
        deviceName,
      )
      ..add(
        'timezone',
        timezone,
      )
      ..add(
        'city',
        city,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IpAddress':
          result.ipAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeviceName':
          result.deviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Timezone':
          result.timezone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'City':
          result.city = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Country':
          result.country = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EventContextDataType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EventContextDataType(
      :ipAddress,
      :deviceName,
      :timezone,
      :city,
      :country
    ) = object;
    if (ipAddress != null) {
      result$
        ..add('IpAddress')
        ..add(serializers.serialize(
          ipAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (deviceName != null) {
      result$
        ..add('DeviceName')
        ..add(serializers.serialize(
          deviceName,
          specifiedType: const FullType(String),
        ));
    }
    if (timezone != null) {
      result$
        ..add('Timezone')
        ..add(serializers.serialize(
          timezone,
          specifiedType: const FullType(String),
        ));
    }
    if (city != null) {
      result$
        ..add('City')
        ..add(serializers.serialize(
          city,
          specifiedType: const FullType(String),
        ));
    }
    if (country != null) {
      result$
        ..add('Country')
        ..add(serializers.serialize(
          country,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
