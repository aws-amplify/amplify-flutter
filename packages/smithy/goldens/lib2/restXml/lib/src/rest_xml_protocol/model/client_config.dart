// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.client_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/rest_xml_protocol/model/retry_config.dart'
    as _i3;
import 'package:rest_xml_v2/src/rest_xml_protocol/model/s3_config.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

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
    _i2.S3Config? s3,
    _i3.RetryConfig? retryConfig,
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

  static const List<_i4.SmithySerializer<ClientConfig>> serializers = [
    ClientConfigRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientConfigBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsSessionToken;
  String? get region;

  /// Configuration specific to S3.
  _i2.S3Config? get s3;

  /// Configuration specific to retries.
  _i3.RetryConfig? get retryConfig;
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

class ClientConfigRestXmlSerializer
    extends _i4.StructuredSmithySerializer<ClientConfig> {
  const ClientConfigRestXmlSerializer() : super('ClientConfig');

  @override
  Iterable<Type> get types => const [
        ClientConfig,
        _$ClientConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
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
        case 'aws_profile':
          result.awsProfile = (serializers.deserialize(
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
        case 'retry_config':
          result.retryConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RetryConfig),
          ) as _i3.RetryConfig));
        case 's3':
          result.s3.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.S3Config),
          ) as _i2.S3Config));
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
    final result$ = <Object?>[const _i4.XmlElementName('ClientConfig')];
    final ClientConfig(
      :awsAccessKeyId,
      :awsProfile,
      :awsSecretAccessKey,
      :awsSessionToken,
      :region,
      :retryConfig,
      :s3
    ) = object;
    if (awsAccessKeyId != null) {
      result$
        ..add(const _i4.XmlElementName('aws_access_key_id'))
        ..add(serializers.serialize(
          awsAccessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (awsProfile != null) {
      result$
        ..add(const _i4.XmlElementName('aws_profile'))
        ..add(serializers.serialize(
          awsProfile,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSecretAccessKey != null) {
      result$
        ..add(const _i4.XmlElementName('aws_secret_access_key'))
        ..add(serializers.serialize(
          awsSecretAccessKey,
          specifiedType: const FullType(String),
        ));
    }
    if (awsSessionToken != null) {
      result$
        ..add(const _i4.XmlElementName('aws_session_token'))
        ..add(serializers.serialize(
          awsSessionToken,
          specifiedType: const FullType(String),
        ));
    }
    if (region != null) {
      result$
        ..add(const _i4.XmlElementName('region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (retryConfig != null) {
      result$
        ..add(const _i4.XmlElementName('retry_config'))
        ..add(serializers.serialize(
          retryConfig,
          specifiedType: const FullType(_i3.RetryConfig),
        ));
    }
    if (s3 != null) {
      result$
        ..add(const _i4.XmlElementName('s3'))
        ..add(serializers.serialize(
          s3,
          specifiedType: const FullType(_i2.S3Config),
        ));
    }
    return result$;
  }
}
