// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.rest_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'rest_endpoint_config.g.dart';

/// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
abstract class RestEndpointConfig
    with _i1.AWSEquatable<RestEndpointConfig>
    implements Built<RestEndpointConfig, RestEndpointConfigBuilder> {
  /// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
  factory RestEndpointConfig({
    required String name,
    required Uri endpoint,
  }) {
    return _$RestEndpointConfig._(
      name: name,
      endpoint: endpoint,
    );
  }

  /// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
  factory RestEndpointConfig.build(
          [void Function(RestEndpointConfigBuilder) updates]) =
      _$RestEndpointConfig;

  const RestEndpointConfig._();

  static const List<_i2.SmithySerializer<RestEndpointConfig>> serializers = [
    RestEndpointConfigSerializer()
  ];

  /// A name which can be used to identify this API
  String get name;

  /// A valid RFC 3986 URI
  Uri get endpoint;
  @override
  List<Object?> get props => [
        name,
        endpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestEndpointConfig')
      ..add(
        'name',
        name,
      )
      ..add(
        'endpoint',
        endpoint,
      );
    return helper.toString();
  }
}

class RestEndpointConfigSerializer
    extends _i2.StructuredSmithySerializer<RestEndpointConfig> {
  const RestEndpointConfigSerializer() : super('RestEndpointConfig');

  @override
  Iterable<Type> get types => const [
        RestEndpointConfig,
        _$RestEndpointConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  RestEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestEndpointConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'endpoint':
          result.endpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'name':
          result.name = (serializers.deserialize(
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
    RestEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RestEndpointConfig(:endpoint, :name) = object;
    result$.addAll([
      'endpoint',
      serializers.serialize(
        endpoint,
        specifiedType: const FullType(Uri),
      ),
      'name',
      serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
