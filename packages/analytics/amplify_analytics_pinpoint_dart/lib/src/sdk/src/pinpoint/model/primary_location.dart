// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.primary_location;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'primary_location.g.dart';

abstract class PrimaryLocation
    with _i1.AWSEquatable<PrimaryLocation>
    implements Built<PrimaryLocation, PrimaryLocationBuilder> {
  factory PrimaryLocation(
      {String? city,
      String? country,
      double? latitude,
      double? longitude,
      String? postalCode,
      String? region}) {
    return _$PrimaryLocation._(
        city: city,
        country: country,
        latitude: latitude,
        longitude: longitude,
        postalCode: postalCode,
        region: region);
  }

  factory PrimaryLocation.build(
      [void Function(PrimaryLocationBuilder) updates]) = _$PrimaryLocation;

  const PrimaryLocation._();

  static const List<_i2.SmithySerializer> serializers = [
    _PrimaryLocationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrimaryLocationBuilder b) {}
  String? get city;
  String? get country;
  double? get latitude;
  double? get longitude;
  String? get postalCode;
  String? get region;
  @override
  List<Object?> get props =>
      [city, country, latitude, longitude, postalCode, region];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrimaryLocation');
    helper.add('city', city);
    helper.add('country', country);
    helper.add('latitude', latitude);
    helper.add('longitude', longitude);
    helper.add('postalCode', postalCode);
    helper.add('region', region);
    return helper.toString();
  }
}

class _PrimaryLocationRestJson1Serializer
    extends _i2.StructuredSmithySerializer<PrimaryLocation> {
  const _PrimaryLocationRestJson1Serializer() : super('PrimaryLocation');

  @override
  Iterable<Type> get types => const [PrimaryLocation, _$PrimaryLocation];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  PrimaryLocation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = PrimaryLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'City':
          if (value != null) {
            result.city = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Country':
          if (value != null) {
            result.country = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Latitude':
          if (value != null) {
            result.latitude = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'Longitude':
          if (value != null) {
            result.longitude = (serializers.deserialize(value,
                specifiedType: const FullType(double)) as double);
          }
          break;
        case 'PostalCode':
          if (value != null) {
            result.postalCode = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(value,
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
    final payload = (object as PrimaryLocation);
    final result = <Object?>[];
    if (payload.city != null) {
      result
        ..add('City')
        ..add(serializers.serialize(payload.city!,
            specifiedType: const FullType(String)));
    }
    if (payload.country != null) {
      result
        ..add('Country')
        ..add(serializers.serialize(payload.country!,
            specifiedType: const FullType(String)));
    }
    if (payload.latitude != null) {
      result
        ..add('Latitude')
        ..add(serializers.serialize(payload.latitude!,
            specifiedType: const FullType(double)));
    }
    if (payload.longitude != null) {
      result
        ..add('Longitude')
        ..add(serializers.serialize(payload.longitude!,
            specifiedType: const FullType(double)));
    }
    if (payload.postalCode != null) {
      result
        ..add('PostalCode')
        ..add(serializers.serialize(payload.postalCode!,
            specifiedType: const FullType(String)));
    }
    if (payload.region != null) {
      result
        ..add('Region')
        ..add(serializers.serialize(payload.region!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
