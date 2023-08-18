// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.app_sync_endpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/api_authorization_mode.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'app_sync_endpoint_config.g.dart';

/// Configuration for an AWS AppSync endpoint.
abstract class AppSyncEndpointConfig
    with _i1.AWSEquatable<AppSyncEndpointConfig>
    implements Built<AppSyncEndpointConfig, AppSyncEndpointConfigBuilder> {
  /// Configuration for an AWS AppSync endpoint.
  factory AppSyncEndpointConfig({
    required String name,
    required Uri endpoint,
    required String region,
    required _i2.ApiAuthorizationMode authMode,
    List<_i2.ApiAuthorizationMode>? additionalAuthModes,
  }) {
    additionalAuthModes ??= const [];
    return _$AppSyncEndpointConfig._(
      name: name,
      endpoint: endpoint,
      region: region,
      authMode: authMode,
      additionalAuthModes: _i3.BuiltList(additionalAuthModes),
    );
  }

  /// Configuration for an AWS AppSync endpoint.
  factory AppSyncEndpointConfig.build(
          [void Function(AppSyncEndpointConfigBuilder) updates]) =
      _$AppSyncEndpointConfig;

  const AppSyncEndpointConfig._();

  static const List<_i4.SmithySerializer<AppSyncEndpointConfig>> serializers = [
    AppSyncEndpointConfigSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AppSyncEndpointConfigBuilder b) {
    b.additionalAuthModes.addAll(const []);
  }

  /// A name which can be used to identify this API
  String get name;

  /// A valid RFC 3986 URI
  Uri get endpoint;

  /// The AWS region where the API is hosted. Used for SigV4 signing.
  String get region;

  /// An authorization mode of an AWS API. APIs may accept multiple authorization modes which must be configured independently.
  _i2.ApiAuthorizationMode get authMode;

  /// Additional authorization modes supported by the API. Used by the API/DataStore categories for multi-auth decisions.
  _i3.BuiltList<_i2.ApiAuthorizationMode> get additionalAuthModes;
  @override
  List<Object?> get props => [
        name,
        endpoint,
        region,
        authMode,
        additionalAuthModes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AppSyncEndpointConfig')
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
      )
      ..add(
        'additionalAuthModes',
        additionalAuthModes,
      );
    return helper.toString();
  }
}

class AppSyncEndpointConfigSerializer
    extends _i4.StructuredSmithySerializer<AppSyncEndpointConfig> {
  const AppSyncEndpointConfigSerializer() : super('AppSyncEndpointConfig');

  @override
  Iterable<Type> get types => const [
        AppSyncEndpointConfig,
        _$AppSyncEndpointConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AppSyncEndpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppSyncEndpointConfigBuilder();
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
              [FullType(_i2.ApiAuthorizationMode)],
            ),
          ) as _i3.BuiltList<_i2.ApiAuthorizationMode>));
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
    AppSyncEndpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AppSyncEndpointConfig(
      :additionalAuthModes,
      :authMode,
      :endpoint,
      :name,
      :region
    ) = object;
    result$.addAll([
      'additionalAuthModes',
      serializers.serialize(
        additionalAuthModes,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.ApiAuthorizationMode)],
        ),
      ),
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
