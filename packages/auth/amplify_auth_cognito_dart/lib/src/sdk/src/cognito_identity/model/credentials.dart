// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_auth_cognito_dart.cognito_identity.model.credentials; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'credentials.g.dart';

/// Credentials for the provided identity ID.
abstract class Credentials
    with _i1.AWSEquatable<Credentials>
    implements Built<Credentials, CredentialsBuilder> {
  /// Credentials for the provided identity ID.
  factory Credentials({
    String? accessKeyId,
    String? secretKey,
    String? sessionToken,
    DateTime? expiration,
  }) {
    return _$Credentials._(
      accessKeyId: accessKeyId,
      secretKey: secretKey,
      sessionToken: sessionToken,
      expiration: expiration,
    );
  }

  /// Credentials for the provided identity ID.
  factory Credentials.build([void Function(CredentialsBuilder) updates]) =
      _$Credentials;

  const Credentials._();

  static const List<_i2.SmithySerializer<Credentials>> serializers = [
    CredentialsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CredentialsBuilder b) {}

  /// The Access Key portion of the credentials.
  String? get accessKeyId;

  /// The Secret Access Key portion of the credentials
  String? get secretKey;

  /// The Session Token portion of the credentials
  String? get sessionToken;

  /// The date at which these credentials will expire.
  DateTime? get expiration;
  @override
  List<Object?> get props => [
        accessKeyId,
        secretKey,
        sessionToken,
        expiration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Credentials')
      ..add(
        'accessKeyId',
        accessKeyId,
      )
      ..add(
        'secretKey',
        secretKey,
      )
      ..add(
        'sessionToken',
        sessionToken,
      )
      ..add(
        'expiration',
        expiration,
      );
    return helper.toString();
  }
}

class CredentialsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<Credentials> {
  const CredentialsAwsJson11Serializer() : super('Credentials');

  @override
  Iterable<Type> get types => const [
        Credentials,
        _$Credentials,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecretKey':
          result.secretKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SessionToken':
          result.sessionToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Expiration':
          result.expiration = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Credentials object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Credentials(:accessKeyId, :secretKey, :sessionToken, :expiration) =
        object;
    if (accessKeyId != null) {
      result$
        ..add('AccessKeyId')
        ..add(serializers.serialize(
          accessKeyId,
          specifiedType: const FullType(String),
        ));
    }
    if (secretKey != null) {
      result$
        ..add('SecretKey')
        ..add(serializers.serialize(
          secretKey,
          specifiedType: const FullType(String),
        ));
    }
    if (sessionToken != null) {
      result$
        ..add('SessionToken')
        ..add(serializers.serialize(
          sessionToken,
          specifiedType: const FullType(String),
        ));
    }
    if (expiration != null) {
      result$
        ..add('Expiration')
        ..add(serializers.serialize(
          expiration,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
