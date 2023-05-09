// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library custom_v1.custom.model.environment_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v1/src/custom/model/retry_mode.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'environment_config.g.dart';

/// Config settings that can be set as environment variables.
abstract class EnvironmentConfig
    with _i1.AWSEquatable<EnvironmentConfig>
    implements Built<EnvironmentConfig, EnvironmentConfigBuilder> {
  /// Config settings that can be set as environment variables.
  factory EnvironmentConfig({
    String? awsAccessKeyId,
    String? awsSecretAccessKey,
    String? awsDefaultRegion,
    _i2.RetryMode? awsRetryMode,
    String? awsSessionToken,
    String? awsProfile,
  }) {
    return _$EnvironmentConfig._(
      awsAccessKeyId: awsAccessKeyId,
      awsSecretAccessKey: awsSecretAccessKey,
      awsDefaultRegion: awsDefaultRegion,
      awsRetryMode: awsRetryMode,
      awsSessionToken: awsSessionToken,
      awsProfile: awsProfile,
    );
  }

  /// Config settings that can be set as environment variables.
  factory EnvironmentConfig.build(
      [void Function(EnvironmentConfigBuilder) updates]) = _$EnvironmentConfig;

  const EnvironmentConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    EnvironmentConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnvironmentConfigBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsDefaultRegion;

  /// Controls the strategy used for retries.
  _i2.RetryMode? get awsRetryMode;
  String? get awsSessionToken;
  String? get awsProfile;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsSecretAccessKey,
        awsDefaultRegion,
        awsRetryMode,
        awsSessionToken,
        awsProfile,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnvironmentConfig');
    helper.add(
      'awsAccessKeyId',
      awsAccessKeyId,
    );
    helper.add(
      'awsSecretAccessKey',
      awsSecretAccessKey,
    );
    helper.add(
      'awsDefaultRegion',
      awsDefaultRegion,
    );
    helper.add(
      'awsRetryMode',
      awsRetryMode,
    );
    helper.add(
      'awsSessionToken',
      awsSessionToken,
    );
    helper.add(
      'awsProfile',
      awsProfile,
    );
    return helper.toString();
  }
}

class EnvironmentConfigRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EnvironmentConfig> {
  const EnvironmentConfigRestJson1Serializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [
        EnvironmentConfig,
        _$EnvironmentConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AWS_ACCESS_KEY_ID':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_DEFAULT_REGION':
          result.awsDefaultRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_PROFILE':
          result.awsProfile = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_RETRY_MODE':
          result.awsRetryMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.RetryMode),
          ) as _i2.RetryMode);
        case 'AWS_SECRET_ACCESS_KEY':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AWS_SESSION_TOKEN':
          result.awsSessionToken = (serializers.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as EnvironmentConfig);
    final result = <Object?>[];
    final EnvironmentConfig(
      :awsAccessKeyId,
      :awsDefaultRegion,
      :awsProfile,
      :awsRetryMode,
      :awsSecretAccessKey,
      :awsSessionToken
    ) = payload;
    if (awsAccessKeyId != null) {
      result
        ..add('AWS_ACCESS_KEY_ID')
        ..add(serializers.serialize(
          awsAccessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsDefaultRegion != null) {
      result
        ..add('AWS_DEFAULT_REGION')
        ..add(serializers.serialize(
          awsDefaultRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (awsProfile != null) {
      result
        ..add('AWS_PROFILE')
        ..add(serializers.serialize(
          awsProfile,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRetryMode != null) {
      result
        ..add('AWS_RETRY_MODE')
        ..add(serializers.serialize(
          awsRetryMode,
          specifiedType: const FullType(_i2.RetryMode),
        ));
    }
    if (awsSecretAccessKey != null) {
      result
        ..add('AWS_SECRET_ACCESS_KEY')
        ..add(serializers.serialize(
          awsSecretAccessKey,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSessionToken != null) {
      result
        ..add('AWS_SESSION_TOKEN')
        ..add(serializers.serialize(
          awsSessionToken,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
