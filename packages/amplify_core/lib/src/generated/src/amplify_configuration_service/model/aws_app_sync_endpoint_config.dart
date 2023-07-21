// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_app_sync_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_api_authorization_mode.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_app_sync_endpoint_config.g.dart';

/// Configuration for an AWS AppSync endpoint.
abstract class AWSAppSyncEndpointConfig
    with _i1.AWSEquatable<AWSAppSyncEndpointConfig>
    implements
        Built<AWSAppSyncEndpointConfig, AWSAppSyncEndpointConfigBuilder> {
  /// Configuration for an AWS AppSync endpoint.
  factory AWSAppSyncEndpointConfig({
    required Uri endpoint,
    required String region,
    required _i2.AWSApiAuthorizationMode authMode,
    List<_i2.AWSApiAuthorizationMode>? additionalAuthModes,
  }) {
    additionalAuthModes ??= const [];
    return _$AWSAppSyncEndpointConfig._(
      endpoint: endpoint,
      region: region,
      authMode: authMode,
      additionalAuthModes: _i3.BuiltList(additionalAuthModes),
    );
  }

  /// Configuration for an AWS AppSync endpoint.
  factory AWSAppSyncEndpointConfig.build(
          [void Function(AWSAppSyncEndpointConfigBuilder) updates]) =
      _$AWSAppSyncEndpointConfig;

  const AWSAppSyncEndpointConfig._();

  static const List<_i4.SmithySerializer<AWSAppSyncEndpointConfig>>
      serializers = [AWSAppSyncEndpointConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAppSyncEndpointConfigBuilder b) {
    b.additionalAuthModes.addAll(const []);
  }

  /// A valid RFC 3986 URI
  Uri get endpoint;

  /// The AWS region where the API is hosted. Used for SigV4 signing.
  String get region;

  /// An authorization mode of an AWS API. APIs may accept multiple authorization modes which must be configured independently.
  _i2.AWSApiAuthorizationMode get authMode;

  /// Additional authorization modes supported by the API. Used by the API/DataStore categories for multi-auth decisions.
  _i3.BuiltList<_i2.AWSApiAuthorizationMode> get additionalAuthModes;
  @override
  List<Object?> get props => [
        endpoint,
        region,
        authMode,
        additionalAuthModes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAppSyncEndpointConfig')
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
      )
      ..add(
        'additionalAuthModes',
        additionalAuthModes,
      );
    return helper.toString();
  }
}

class AWSAppSyncEndpointConfigSerializer
    extends _i4.StructuredSmithySerializer<AWSAppSyncEndpointConfig> {
  const AWSAppSyncEndpointConfigSerializer()
      : super('AWSAppSyncEndpointConfig');

  @override
  Iterable<Type> get types => const [
        AWSAppSyncEndpointConfig,
        _$AWSAppSyncEndpointConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAppSyncEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAppSyncEndpointConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'additionalAuthModes':
          result.additionalAuthModes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AWSApiAuthorizationMode)],
            ),
          ) as _i3.BuiltList<_i2.AWSApiAuthorizationMode>));
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
    AWSAppSyncEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAppSyncEndpointConfig(
      :additionalAuthModes,
      :authMode,
      :endpoint,
      :region
    ) = object;
    result$.addAll([
      'additionalAuthModes',
      serializers.serialize(
        additionalAuthModes,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.AWSApiAuthorizationMode)],
        ),
      ),
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
