// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.model.client_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/json_protocol/model/retry_config.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/s3_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_config.g.dart';

/// Configuration that is set on the constructed client.
abstract class ClientConfig
    with _i1.AWSEquatable<ClientConfig>
    implements Built<ClientConfig, ClientConfigBuilder> {
  /// Configuration that is set on the constructed client.
  factory ClientConfig({
    String? awsAccessKeyId,
    String? awsSecretAccessKey,
    String? awsSessionToken,
    String? region,
    S3Config? s3,
    RetryConfig? retryConfig,
    String? awsProfile,
  }) {
    return _$ClientConfig._(
      awsAccessKeyId: awsAccessKeyId,
      awsSecretAccessKey: awsSecretAccessKey,
      awsSessionToken: awsSessionToken,
      region: region,
      s3: s3,
      retryConfig: retryConfig,
      awsProfile: awsProfile,
    );
  }

  /// Configuration that is set on the constructed client.
  factory ClientConfig.build([void Function(ClientConfigBuilder) updates]) =
      _$ClientConfig;

  const ClientConfig._();

  static const List<_i2.SmithySerializer<ClientConfig>> serializers = [
    ClientConfigAwsJson11Serializer()
  ];

  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  String? get region;

  /// Configuration specific to S3.
  S3Config? get s3;

  /// Configuration specific to retries.
  RetryConfig? get retryConfig;
  String? get awsProfile;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsSecretAccessKey,
        awsSessionToken,
        region,
        s3,
        retryConfig,
        awsProfile,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientConfig')
      ..add(
        'awsAccessKeyId',
        awsAccessKeyId,
      )
      ..add(
        'awsSecretAccessKey',
        awsSecretAccessKey,
      )
      ..add(
        'awsSessionToken',
        awsSessionToken,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        's3',
        s3,
      )
      ..add(
        'retryConfig',
        retryConfig,
      )
      ..add(
        'awsProfile',
        awsProfile,
      );
    return helper.toString();
  }
}

class ClientConfigAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ClientConfig> {
  const ClientConfigAwsJson11Serializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [
        ClientConfig,
        _$ClientConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ClientConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'aws_access_key_id':
          result.awsAccessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_secret_access_key':
          result.awsSecretAccessKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'aws_session_token':
          result.awsSessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(S3Config),
          ) as S3Config));
        case 'retry_config':
          result.retryConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RetryConfig),
          ) as RetryConfig));
        case 'aws_profile':
          result.awsProfile = (serializers.deserialize(
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
    ClientConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ClientConfig(
      :awsAccessKeyId,
      :awsSecretAccessKey,
      :awsSessionToken,
      :region,
      :s3,
      :retryConfig,
      :awsProfile
    ) = object;
    if (awsAccessKeyId != null) {
      result$
        ..add('aws_access_key_id')
        ..add(serializers.serialize(
          awsAccessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSecretAccessKey != null) {
      result$
        ..add('aws_secret_access_key')
        ..add(serializers.serialize(
          awsSecretAccessKey,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSessionToken != null) {
      result$
        ..add('aws_session_token')
        ..add(serializers.serialize(
          awsSessionToken,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add('region')
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (s3 != null) {
      result$
        ..add('s3')
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(S3Config),
        ));
    }
    if (retryConfig != null) {
      result$
        ..add('retry_config')
        ..add(serializers.serialize(
          retryConfig,
          specifiedType: const FullType(RetryConfig),
        ));
    }
    if (awsProfile != null) {
      result$
        ..add('aws_profile')
        ..add(serializers.serialize(
          awsProfile,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
