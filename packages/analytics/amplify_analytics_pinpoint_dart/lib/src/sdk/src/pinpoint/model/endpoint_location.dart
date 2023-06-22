// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<EndpointLocation>> serializers = [
    EndpointLocationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointLocationBuilder b) {}

  /// The name of the city where the endpoint is located.
  String? get city;

  /// The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the endpoint is located. For example, US for the United States.
  String? get country;

  /// The latitude coordinate of the endpoint location, rounded to one decimal place.
  double? get latitude;

  /// The longitude coordinate of the endpoint location, rounded to one decimal place.
  double? get longitude;

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
    final helper = newBuiltValueToStringHelper('EndpointLocation')
      ..add(
        'city',
        city,
      )
      ..add(
        'country',
        country,
      )
      ..add(
        'latitude',
        latitude,
      )
      ..add(
        'longitude',
        longitude,
      )
      ..add(
        'postalCode',
        postalCode,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'Latitude':
          result.latitude = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Longitude':
          result.longitude = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'PostalCode':
          result.postalCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Region':
          result.region = (serializers.deserialize(
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
    EndpointLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointLocation(
      :city,
      :country,
      :latitude,
      :longitude,
      :postalCode,
      :region
    ) = object;
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
    if (latitude != null) {
      result$
        ..add('Latitude')
        ..add(serializers.serialize(
          latitude,
          specifiedType: const FullType(double),
        ));
    }
    if (longitude != null) {
      result$
        ..add('Longitude')
        ..add(serializers.serialize(
          longitude,
          specifiedType: const FullType(double),
        ));
    }
    if (postalCode != null) {
      result$
        ..add('PostalCode')
        ..add(serializers.serialize(
          postalCode,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add('Region')
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
