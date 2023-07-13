// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_auth_identity_pool_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_auth_identity_pool_config.g.dart';

abstract class AWSAuthIdentityPoolConfig
    with _i1.AWSEquatable<AWSAuthIdentityPoolConfig>
    implements
        Built<AWSAuthIdentityPoolConfig, AWSAuthIdentityPoolConfigBuilder> {
  factory AWSAuthIdentityPoolConfig({
    required String poolId,
    required String region,
    bool? allowUnauthenticatedIdentities,
  }) {
    allowUnauthenticatedIdentities ??= true;
    return _$AWSAuthIdentityPoolConfig._(
      poolId: poolId,
      region: region,
      allowUnauthenticatedIdentities: allowUnauthenticatedIdentities,
    );
  }

  factory AWSAuthIdentityPoolConfig.build(
          [void Function(AWSAuthIdentityPoolConfigBuilder) updates]) =
      _$AWSAuthIdentityPoolConfig;

  const AWSAuthIdentityPoolConfig._();

  static const List<_i2.SmithySerializer<AWSAuthIdentityPoolConfig>>
      serializers = [AWSAuthIdentityPoolConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSAuthIdentityPoolConfigBuilder b) {
    b.allowUnauthenticatedIdentities = true;
  }

  String get poolId;
  String get region;
  bool? get allowUnauthenticatedIdentities;
  @override
  List<Object?> get props => [
        poolId,
        region,
        allowUnauthenticatedIdentities,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSAuthIdentityPoolConfig')
      ..add(
        'poolId',
        poolId,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'allowUnauthenticatedIdentities',
        allowUnauthenticatedIdentities,
      );
    return helper.toString();
  }
}

class AWSAuthIdentityPoolConfigSerializer
    extends _i2.StructuredSmithySerializer<AWSAuthIdentityPoolConfig> {
  const AWSAuthIdentityPoolConfigSerializer()
      : super('AWSAuthIdentityPoolConfig');

  @override
  Iterable<Type> get types => const [
        AWSAuthIdentityPoolConfig,
        _$AWSAuthIdentityPoolConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAuthIdentityPoolConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSAuthIdentityPoolConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allowUnauthenticatedIdentities':
          result.allowUnauthenticatedIdentities = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'poolId':
          result.poolId = (serializers.deserialize(
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
    AWSAuthIdentityPoolConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSAuthIdentityPoolConfig(
      :allowUnauthenticatedIdentities,
      :poolId,
      :region
    ) = object;
    result$.addAll([
      'poolId',
      serializers.serialize(
        poolId,
        specifiedType: const FullType(String),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    if (allowUnauthenticatedIdentities != null) {
      result$
        ..add('allowUnauthenticatedIdentities')
        ..add(serializers.serialize(
          allowUnauthenticatedIdentities,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
