// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_demographic; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'endpoint_demographic.g.dart';

/// Specifies demographic information about an endpoint, such as the applicable time zone and platform.
abstract class EndpointDemographic
    with _i1.AWSEquatable<EndpointDemographic>
    implements Built<EndpointDemographic, EndpointDemographicBuilder> {
  /// Specifies demographic information about an endpoint, such as the applicable time zone and platform.
  factory EndpointDemographic({
    String? appVersion,
    String? locale,
    String? make,
    String? model,
    String? modelVersion,
    String? platform,
    String? platformVersion,
    String? timezone,
  }) {
    return _$EndpointDemographic._(
      appVersion: appVersion,
      locale: locale,
      make: make,
      model: model,
      modelVersion: modelVersion,
      platform: platform,
      platformVersion: platformVersion,
      timezone: timezone,
    );
  }

  /// Specifies demographic information about an endpoint, such as the applicable time zone and platform.
  factory EndpointDemographic.build(
          [void Function(EndpointDemographicBuilder) updates]) =
      _$EndpointDemographic;

  const EndpointDemographic._();

  static const List<_i2.SmithySerializer<EndpointDemographic>> serializers = [
    EndpointDemographicRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointDemographicBuilder b) {}

  /// The version of the app that's associated with the endpoint.
  String? get appVersion;

  /// The locale of the endpoint, in the following format: the ISO 639-1 alpha-2 code, followed by an underscore (_), followed by an ISO 3166-1 alpha-2 value.
  String? get locale;

  /// The manufacturer of the endpoint device, such as apple or samsung.
  String? get make;

  /// The model name or number of the endpoint device, such as iPhone or SM-G900F.
  String? get model;

  /// The model version of the endpoint device.
  String? get modelVersion;

  /// The platform of the endpoint device, such as ios.
  String? get platform;

  /// The platform version of the endpoint device.
  String? get platformVersion;

  /// The time zone of the endpoint, specified as a tz database name value, such as America/Los_Angeles.
  String? get timezone;
  @override
  List<Object?> get props => [
        appVersion,
        locale,
        make,
        model,
        modelVersion,
        platform,
        platformVersion,
        timezone,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointDemographic')
      ..add(
        'appVersion',
        appVersion,
      )
      ..add(
        'locale',
        locale,
      )
      ..add(
        'make',
        make,
      )
      ..add(
        'model',
        model,
      )
      ..add(
        'modelVersion',
        modelVersion,
      )
      ..add(
        'platform',
        platform,
      )
      ..add(
        'platformVersion',
        platformVersion,
      )
      ..add(
        'timezone',
        timezone,
      );
    return helper.toString();
  }
}

class EndpointDemographicRestJson1Serializer
    extends _i2.StructuredSmithySerializer<EndpointDemographic> {
  const EndpointDemographicRestJson1Serializer() : super('EndpointDemographic');

  @override
  Iterable<Type> get types => const [
        EndpointDemographic,
        _$EndpointDemographic,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointDemographic deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointDemographicBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AppVersion':
          result.appVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Locale':
          result.locale = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Make':
          result.make = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Model':
          result.model = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ModelVersion':
          result.modelVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PlatformVersion':
          result.platformVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Timezone':
          result.timezone = (serializers.deserialize(
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
    EndpointDemographic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointDemographic(
      :appVersion,
      :locale,
      :make,
      :model,
      :modelVersion,
      :platform,
      :platformVersion,
      :timezone
    ) = object;
    if (appVersion != null) {
      result$
        ..add('AppVersion')
        ..add(serializers.serialize(
          appVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (locale != null) {
      result$
        ..add('Locale')
        ..add(serializers.serialize(
          locale,
          specifiedType: const FullType(String),
        ));
    }
    if (make != null) {
      result$
        ..add('Make')
        ..add(serializers.serialize(
          make,
          specifiedType: const FullType(String),
        ));
    }
    if (model != null) {
      result$
        ..add('Model')
        ..add(serializers.serialize(
          model,
          specifiedType: const FullType(String),
        ));
    }
    if (modelVersion != null) {
      result$
        ..add('ModelVersion')
        ..add(serializers.serialize(
          modelVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (platform != null) {
      result$
        ..add('Platform')
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType(String),
        ));
    }
    if (platformVersion != null) {
      result$
        ..add('PlatformVersion')
        ..add(serializers.serialize(
          platformVersion,
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
    return result$;
  }
}
