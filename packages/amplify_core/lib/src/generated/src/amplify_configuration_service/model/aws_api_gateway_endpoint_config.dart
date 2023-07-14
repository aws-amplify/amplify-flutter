// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_api_gateway_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'aws_api_gateway_endpoint_config.g.dart';

/// Configuration for an AWS API Gateway endpoint.
abstract class AWSApiGatewayEndpointConfig
    with _i1.AWSEquatable<AWSApiGatewayEndpointConfig>
    implements
        Built<AWSApiGatewayEndpointConfig, AWSApiGatewayEndpointConfigBuilder> {
  /// Configuration for an AWS API Gateway endpoint.
  factory AWSApiGatewayEndpointConfig({
    required Uri endpoint,
    required String region,
    required _i2.AWSApiAuthorizationMode authMode,
  }) {
    return _$AWSApiGatewayEndpointConfig._(
      endpoint: endpoint,
      region: region,
      authMode: authMode,
    );
  }

  /// Configuration for an AWS API Gateway endpoint.
  factory AWSApiGatewayEndpointConfig.build(
          [void Function(AWSApiGatewayEndpointConfigBuilder) updates]) =
      _$AWSApiGatewayEndpointConfig;

  const AWSApiGatewayEndpointConfig._();

  static const List<_i3.SmithySerializer<AWSApiGatewayEndpointConfig>>
      serializers = [AWSApiGatewayEndpointConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSApiGatewayEndpointConfigBuilder b) {}

  /// A valid RFC 3986 URI
  Uri get endpoint;

  /// The AWS region where the API is hosted. Used for SigV4 signing.
  String get region;

  /// An authorization mode of an AWS API. APIs may accept multiple authorization modes which must be configured independently.
  _i2.AWSApiAuthorizationMode get authMode;
  @override
  List<Object?> get props => [
        endpoint,
        region,
        authMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSApiGatewayEndpointConfig')
      ..add(
        'endpoint',
        endpoint,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'authMode',
        authMode,
      );
    return helper.toString();
  }
}

class AWSApiGatewayEndpointConfigSerializer
    extends _i3.StructuredSmithySerializer<AWSApiGatewayEndpointConfig> {
  const AWSApiGatewayEndpointConfigSerializer()
      : super('AWSApiGatewayEndpointConfig');

  @override
  Iterable<Type> get types => const [
        AWSApiGatewayEndpointConfig,
        _$AWSApiGatewayEndpointConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSApiGatewayEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSApiGatewayEndpointConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'authMode':
          result.authMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AWSApiAuthorizationMode),
          ) as _i2.AWSApiAuthorizationMode);
        case 'endpoint':
          result.endpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'region':
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
    AWSApiGatewayEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSApiGatewayEndpointConfig(:authMode, :endpoint, :region) = object;
    result$.addAll([
      'authMode',
      serializers.serialize(
        authMode,
        specifiedType: const FullType(_i2.AWSApiAuthorizationMode),
      ),
      'endpoint',
      serializers.serialize(
        endpoint,
        specifiedType: const FullType(Uri),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
