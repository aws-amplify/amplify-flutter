// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_api_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_gateway_endpoint_config.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_app_sync_endpoint_config.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_rest_endpoint_config.dart'
    as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSApiEndpointConfig
    extends _i1.SmithyUnion<AWSApiEndpointConfig> {
  const AWSApiEndpointConfig._();

  factory AWSApiEndpointConfig.appSync({
    required Uri endpoint,
    required String region,
    required _i2.AWSApiAuthorizationMode authMode,
    List<_i2.AWSApiAuthorizationMode>? additionalAuthModes,
  }) =>
      AWSApiEndpointConfigAppSync$(_i3.AWSAppSyncEndpointConfig(
        endpoint: endpoint,
        region: region,
        authMode: authMode,
        additionalAuthModes: additionalAuthModes,
      ));

  factory AWSApiEndpointConfig.apiGateway({
    required Uri endpoint,
    required String region,
    required _i2.AWSApiAuthorizationMode authMode,
  }) =>
      AWSApiEndpointConfigApiGateway$(_i4.AWSApiGatewayEndpointConfig(
        endpoint: endpoint,
        region: region,
        authMode: authMode,
      ));

  factory AWSApiEndpointConfig.rest({required Uri endpoint}) =>
      AWSApiEndpointConfigRest$(_i5.AWSRestEndpointConfig(endpoint: endpoint));

  const factory AWSApiEndpointConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSApiEndpointConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSApiEndpointConfig>> serializers = [
    AWSApiEndpointConfigSerializer()
  ];

  /// Common configuration for a AWS API endpoints
  _i3.AWSAppSyncEndpointConfig? get appSync => null;

  /// Common configuration for a AWS API endpoints
  _i4.AWSApiGatewayEndpointConfig? get apiGateway => null;

  /// Configuration for a non-AWS REST endpoint
  _i5.AWSRestEndpointConfig? get rest => null;
  @override
  Object get value => (appSync ?? apiGateway ?? rest)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSApiEndpointConfig');
    if (appSync != null) {
      helper.add(
        r'appSync',
        appSync,
      );
    }
    if (apiGateway != null) {
      helper.add(
        r'apiGateway',
        apiGateway,
      );
    }
    if (rest != null) {
      helper.add(
        r'rest',
        rest,
      );
    }
    return helper.toString();
  }
}

final class AWSApiEndpointConfigAppSync$ extends AWSApiEndpointConfig {
  const AWSApiEndpointConfigAppSync$(this.appSync) : super._();

  @override
  final _i3.AWSAppSyncEndpointConfig appSync;

  @override
  String get name => 'appSync';
}

final class AWSApiEndpointConfigApiGateway$ extends AWSApiEndpointConfig {
  const AWSApiEndpointConfigApiGateway$(this.apiGateway) : super._();

  @override
  final _i4.AWSApiGatewayEndpointConfig apiGateway;

  @override
  String get name => 'apiGateway';
}

final class AWSApiEndpointConfigRest$ extends AWSApiEndpointConfig {
  const AWSApiEndpointConfigRest$(this.rest) : super._();

  @override
  final _i5.AWSRestEndpointConfig rest;

  @override
  String get name => 'rest';
}

final class AWSApiEndpointConfigSdkUnknown$ extends AWSApiEndpointConfig {
  const AWSApiEndpointConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSApiEndpointConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSApiEndpointConfig> {
  const AWSApiEndpointConfigSerializer() : super('AWSApiEndpointConfig');

  @override
  Iterable<Type> get types => const [
        AWSApiEndpointConfig,
        AWSApiEndpointConfigAppSync$,
        AWSApiEndpointConfigApiGateway$,
        AWSApiEndpointConfigRest$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSApiEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'appSync':
        return AWSApiEndpointConfigAppSync$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.AWSAppSyncEndpointConfig),
        ) as _i3.AWSAppSyncEndpointConfig));
      case 'apiGateway':
        return AWSApiEndpointConfigApiGateway$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i4.AWSApiGatewayEndpointConfig),
        ) as _i4.AWSApiGatewayEndpointConfig));
      case 'rest':
        return AWSApiEndpointConfigRest$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i5.AWSRestEndpointConfig),
        ) as _i5.AWSRestEndpointConfig));
    }
    return AWSApiEndpointConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSApiEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSApiEndpointConfigAppSync$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.AWSAppSyncEndpointConfig),
          ),
        AWSApiEndpointConfigApiGateway$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i4.AWSApiGatewayEndpointConfig),
          ),
        AWSApiEndpointConfigRest$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i5.AWSRestEndpointConfig),
          ),
        AWSApiEndpointConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
