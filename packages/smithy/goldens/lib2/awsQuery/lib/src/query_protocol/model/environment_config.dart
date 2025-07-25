// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_query_v2.query_protocol.model.environment_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_query_v2/src/query_protocol/model/retry_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

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
    RetryMode? awsRetryMode,
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
  factory EnvironmentConfig.build([
    void Function(EnvironmentConfigBuilder) updates,
  ]) = _$EnvironmentConfig;

  const EnvironmentConfig._();

  static const List<_i2.SmithySerializer<EnvironmentConfig>> serializers = [
    EnvironmentConfigAwsQuerySerializer(),
  ];

  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsDefaultRegion;

  /// Controls the strategy used for retries.
  RetryMode? get awsRetryMode;
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
    final helper = newBuiltValueToStringHelper('EnvironmentConfig')
      ..add('awsAccessKeyId', awsAccessKeyId)
      ..add('awsSecretAccessKey', awsSecretAccessKey)
      ..add('awsDefaultRegion', awsDefaultRegion)
      ..add('awsRetryMode', awsRetryMode)
      ..add('awsSessionToken', awsSessionToken)
      ..add('awsProfile', awsProfile);
    return helper.toString();
  }
}

class EnvironmentConfigAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<EnvironmentConfig> {
  const EnvironmentConfigAwsQuerySerializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [EnvironmentConfig, _$EnvironmentConfig];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'awsQuery'),
  ];

  @override
  EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentConfigBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
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
          result.awsAccessKeyId =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'AWS_SECRET_ACCESS_KEY':
          result.awsSecretAccessKey =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'AWS_DEFAULT_REGION':
          result.awsDefaultRegion =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'AWS_RETRY_MODE':
          result.awsRetryMode =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(RetryMode),
                  )
                  as RetryMode);
        case 'AWS_SESSION_TOKEN':
          result.awsSessionToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'AWS_PROFILE':
          result.awsProfile =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EnvironmentConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EnvironmentConfigResponse',
        _i2.XmlNamespace('https://example.com/'),
      ),
    ];
    final EnvironmentConfig(
      :awsAccessKeyId,
      :awsSecretAccessKey,
      :awsDefaultRegion,
      :awsRetryMode,
      :awsSessionToken,
      :awsProfile,
    ) = object;
    if (awsAccessKeyId != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_ACCESS_KEY_ID'))
        ..add(
          serializers.serialize(
            awsAccessKeyId,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (awsSecretAccessKey != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_SECRET_ACCESS_KEY'))
        ..add(
          serializers.serialize(
            awsSecretAccessKey,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (awsDefaultRegion != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_DEFAULT_REGION'))
        ..add(
          serializers.serialize(
            awsDefaultRegion,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (awsRetryMode != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_RETRY_MODE'))
        ..add(
          serializers.serialize(
            awsRetryMode,
            specifiedType: const FullType(RetryMode),
          ),
        );
    }
    if (awsSessionToken != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_SESSION_TOKEN'))
        ..add(
          serializers.serialize(
            awsSessionToken,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (awsProfile != null) {
      result$
        ..add(const _i2.XmlElementName('AWS_PROFILE'))
        ..add(
          serializers.serialize(
            awsProfile,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
