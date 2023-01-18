// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'endpoint_location.g.dart';

/// Specifies geographic information about an endpoint.
abstract class EndpointLocation
    with _i1.AWSEquatable<EndpointLocation>
    implements Built<EndpointLocation, EndpointLocationBuilder> {
  /// Specifies geographic information about an endpoint.
  factory EndpointLocation({
    String? city,
    String? country,
    double? latitude,
    double? longitude,
    String? postalCode,
    String? region,
  }) {
    latitude ??= 0;
    longitude ??= 0;
    return _$EndpointLocation._(
      city: city,
      country: country,
      latitude: latitude,
      longitude: longitude,
      postalCode: postalCode,
      region: region,
    );
  }

  /// Specifies geographic information about an endpoint.
  factory EndpointLocation.build(
      [void Function(EndpointLocationBuilder) updates]) = _$EndpointLocation;

  const EndpointLocation._();

  static const List<_i2.SmithySerializer> serializers = [
    EndpointLocationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointLocationBuilder b) {
    b.latitude = 0;
    b.longitude = 0;
  }

  /// The name of the city where the endpoint is located.
  String? get city;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.
  String? get country;

  /// The latitude coordinate of the endpoint location, rounded to one decimal place.
  double get latitude;

  /// The longitude coordinate of the endpoint location, rounded to one decimal place.
  double get longitude;

  /// The postal or ZIP code for the area where the endpoint is located.
  String? get postalCode;

  /// The name of the region where the endpoint is located. For locations in the United States, this value is the name of a state.
  String? get region;
  @override
  List<Object?> get props => [
        city,
        country,
        latitude,
        longitude,
        postalCode,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointLocation');
    helper.add(
      'city',
      city,
    );
    helper.add(
      'country',
      country,
    );
    helper.add(
      'latitude',
      latitude,
    );
    helper.add(
      'longitude',
      longitude,
    );
    helper.add(
      'postalCode',
      postalCode,
    );
    helper.add(
      'region',
      region,
    );
    return helper.toString();
  }
}

class EndpointLocationRestJson1Serializer
    extends _i2.StructuredSmithySerializer<EndpointLocation> {
  const EndpointLocationRestJson1Serializer() : super('EndpointLocation');

  @override
  Iterable<Type> get types => const [
        EndpointLocation,
        _$EndpointLocation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointLocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
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
        case 'Latitude':
          result.latitude = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'Longitude':
          result.longitude = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'PostalCode':
          if (value != null) {
            result.postalCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(
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
    final payload = (object as EndpointLocation);
    final result = <Object?>[
      'Latitude',
      serializers.serialize(
        payload.latitude,
        specifiedType: const FullType(double),
      ),
      'Longitude',
      serializers.serialize(
        payload.longitude,
        specifiedType: const FullType(double),
      ),
    ];
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
    if (payload.postalCode != null) {
      result
        ..add('PostalCode')
        ..add(serializers.serialize(
          payload.postalCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add('Region')
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
