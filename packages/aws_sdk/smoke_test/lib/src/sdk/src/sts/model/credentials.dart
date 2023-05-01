// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.sts.model.credentials; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credentials.g.dart';

/// Amazon Web Services credentials for API authentication.
abstract class Credentials
    with _i1.AWSEquatable<Credentials>
    implements Built<Credentials, CredentialsBuilder> {
  /// Amazon Web Services credentials for API authentication.
  factory Credentials({
    required String accessKeyId,
    required String secretAccessKey,
    required String sessionToken,
    required DateTime expiration,
  }) {
    return _$Credentials._(
      accessKeyId: accessKeyId,
      secretAccessKey: secretAccessKey,
      sessionToken: sessionToken,
      expiration: expiration,
    );
  }

  /// Amazon Web Services credentials for API authentication.
  factory Credentials.build([void Function(CredentialsBuilder) updates]) =
      _$Credentials;

  const Credentials._();

  static const List<_i2.SmithySerializer> serializers = [
    CredentialsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CredentialsBuilder b) {}

  /// The access key ID that identifies the temporary security credentials.
  String get accessKeyId;

  /// The secret access key that can be used to sign requests.
  String get secretAccessKey;

  /// The token that users must pass to the service API to use the temporary credentials.
  String get sessionToken;

  /// The date on which the current credentials expire.
  DateTime get expiration;
  @override
  List<Object?> get props => [
        accessKeyId,
        secretAccessKey,
        sessionToken,
        expiration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Credentials');
    helper.add(
      'accessKeyId',
      accessKeyId,
    );
    helper.add(
      'secretAccessKey',
      secretAccessKey,
    );
    helper.add(
      'sessionToken',
      sessionToken,
    );
    helper.add(
      'expiration',
      expiration,
    );
    return helper.toString();
  }
}

class CredentialsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<Credentials> {
  const CredentialsAwsQuerySerializer() : super('Credentials');

  @override
  Iterable<Type> get types => const [
        Credentials,
        _$Credentials,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Credentials deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SecretAccessKey':
          result.secretAccessKey = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SessionToken':
          result.sessionToken = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Expiration':
          result.expiration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
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
    final payload = (object as Credentials);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CredentialsResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        payload.accessKeyId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('SecretAccessKey'))
      ..add(serializers.serialize(
        payload.secretAccessKey,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('SessionToken'))
      ..add(serializers.serialize(
        payload.sessionToken,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('Expiration'))
      ..add(serializers.serialize(
        payload.expiration,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result;
  }
}
