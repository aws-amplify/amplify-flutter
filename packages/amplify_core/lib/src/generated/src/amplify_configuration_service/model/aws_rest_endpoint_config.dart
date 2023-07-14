// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_rest_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_rest_endpoint_config.g.dart';

/// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
abstract class AWSRestEndpointConfig
    with _i1.AWSEquatable<AWSRestEndpointConfig>
    implements Built<AWSRestEndpointConfig, AWSRestEndpointConfigBuilder> {
  /// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
  factory AWSRestEndpointConfig({required Uri endpoint}) {
    return _$AWSRestEndpointConfig._(endpoint: endpoint);
  }

  /// Configuration for a non-APIGW REST endpoint. Automatic authorization is not supported for these endpoints. To configure authorization, use a custom HTTP client which can add the required headers to each request.
  factory AWSRestEndpointConfig.build(
          [void Function(AWSRestEndpointConfigBuilder) updates]) =
      _$AWSRestEndpointConfig;

  const AWSRestEndpointConfig._();

  static const List<_i2.SmithySerializer<AWSRestEndpointConfig>> serializers = [
    AWSRestEndpointConfigSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSRestEndpointConfigBuilder b) {}

  /// A valid RFC 3986 URI
  Uri get endpoint;
  @override
  List<Object?> get props => [endpoint];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSRestEndpointConfig')
      ..add(
        'endpoint',
        endpoint,
      );
    return helper.toString();
  }
}

class AWSRestEndpointConfigSerializer
    extends _i2.StructuredSmithySerializer<AWSRestEndpointConfig> {
  const AWSRestEndpointConfigSerializer() : super('AWSRestEndpointConfig');

  @override
  Iterable<Type> get types => const [
        AWSRestEndpointConfig,
        _$AWSRestEndpointConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSRestEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSRestEndpointConfigBuilder();
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSRestEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSRestEndpointConfig(:endpoint) = object;
    result$.addAll([
      'endpoint',
      serializers.serialize(
        endpoint,
        specifiedType: const FullType(Uri),
      ),
    ]);
    return result$;
  }
}
