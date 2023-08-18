// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.api_gateway_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_authorization_mode.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'api_gateway_endpoint_config.g.dart';

/// Configuration for an AWS API Gateway endpoint.
abstract class ApiGatewayEndpointConfig
    with _i1.AWSEquatable<ApiGatewayEndpointConfig>
    implements
        Built<ApiGatewayEndpointConfig, ApiGatewayEndpointConfigBuilder> {
  /// Configuration for an AWS API Gateway endpoint.
  factory ApiGatewayEndpointConfig({
    required String name,
    required Uri endpoint,
    required String region,
    required _i2.ApiAuthorizationMode authMode,
  }) {
    return _$ApiGatewayEndpointConfig._(
      name: name,
      endpoint: endpoint,
      region: region,
      authMode: authMode,
    );
  }

  /// Configuration for an AWS API Gateway endpoint.
  factory ApiGatewayEndpointConfig.build(
          [void Function(ApiGatewayEndpointConfigBuilder) updates]) =
      _$ApiGatewayEndpointConfig;

  const ApiGatewayEndpointConfig._();

  static const List<_i3.SmithySerializer<ApiGatewayEndpointConfig>>
      serializers = [ApiGatewayEndpointConfigSerializer()];

  /// A name which can be used to identify this API
  String get name;

  /// A valid RFC 3986 URI
  Uri get endpoint;

  /// The AWS region where the API is hosted. Used for SigV4 signing.
  String get region;

  /// An authorization mode of an AWS API. APIs may accept multiple authorization modes which must be configured independently.
  _i2.ApiAuthorizationMode get authMode;
  @override
  List<Object?> get props => [
        name,
        endpoint,
        region,
        authMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ApiGatewayEndpointConfig')
      ..add(
        'name',
        name,
      )
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

class ApiGatewayEndpointConfigSerializer
    extends _i3.StructuredSmithySerializer<ApiGatewayEndpointConfig> {
  const ApiGatewayEndpointConfigSerializer()
      : super('ApiGatewayEndpointConfig');

  @override
  Iterable<Type> get types => const [
        ApiGatewayEndpointConfig,
        _$ApiGatewayEndpointConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  ApiGatewayEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiGatewayEndpointConfigBuilder();
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
            specifiedType: const FullType(_i2.ApiAuthorizationMode),
          ) as _i2.ApiAuthorizationMode);
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
    ApiGatewayEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ApiGatewayEndpointConfig(:authMode, :endpoint, :name, :region) =
        object;
    result$.addAll([
      'authMode',
      serializers.serialize(
        authMode,
        specifiedType: const FullType(_i2.ApiAuthorizationMode),
      ),
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
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
