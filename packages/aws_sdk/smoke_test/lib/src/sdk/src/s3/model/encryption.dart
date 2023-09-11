// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart';

part 'encryption.g.dart';

/// Contains the type of server-side encryption used.
abstract class Encryption
    with _i1.AWSEquatable<Encryption>
    implements Built<Encryption, EncryptionBuilder> {
  /// Contains the type of server-side encryption used.
  factory Encryption({
    required ServerSideEncryption encryptionType,
    String? kmsKeyId,
    String? kmsContext,
  }) {
    return _$Encryption._(
      encryptionType: encryptionType,
      kmsKeyId: kmsKeyId,
      kmsContext: kmsContext,
    );
  }

  /// Contains the type of server-side encryption used.
  factory Encryption.build([void Function(EncryptionBuilder) updates]) =
      _$Encryption;

  const Encryption._();

  static const List<_i2.SmithySerializer<Encryption>> serializers = [
    EncryptionRestXmlSerializer()
  ];

  /// The server-side encryption algorithm used when storing job results in Amazon S3 (for example, AES256, `aws:kms`).
  ServerSideEncryption get encryptionType;

  /// If the encryption type is `aws:kms`, this optional value specifies the ID of the symmetric encryption customer managed key to use for encryption of job results. Amazon S3 only supports symmetric encryption KMS keys. For more information, see [Asymmetric keys in KMS](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html) in the _Amazon Web Services Key Management Service Developer Guide_.
  String? get kmsKeyId;

  /// If the encryption type is `aws:kms`, this optional value can be used to specify the encryption context for the restore results.
  String? get kmsContext;
  @override
  List<Object?> get props => [
        encryptionType,
        kmsKeyId,
        kmsContext,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Encryption')
      ..add(
        'encryptionType',
        encryptionType,
      )
      ..add(
        'kmsKeyId',
        '***SENSITIVE***',
      )
      ..add(
        'kmsContext',
        kmsContext,
      );
    return helper.toString();
  }
}

class EncryptionRestXmlSerializer
    extends _i2.StructuredSmithySerializer<Encryption> {
  const EncryptionRestXmlSerializer() : super('Encryption');

  @override
  Iterable<Type> get types => const [
        Encryption,
        _$Encryption,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Encryption deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EncryptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EncryptionType':
          result.encryptionType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ServerSideEncryption),
          ) as ServerSideEncryption);
        case 'KMSContext':
          result.kmsContext = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KMSKeyId':
          result.kmsKeyId = (serializers.deserialize(
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
    Encryption object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Encryption',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Encryption(:encryptionType, :kmsContext, :kmsKeyId) = object;
    result$
      ..add(const _i2.XmlElementName('EncryptionType'))
      ..add(serializers.serialize(
        encryptionType,
        specifiedType: const FullType(ServerSideEncryption),
      ));
    if (kmsContext != null) {
      result$
        ..add(const _i2.XmlElementName('KMSContext'))
        ..add(serializers.serialize(
          kmsContext,
          specifiedType: const FullType(String),
        ));
    }
    if (kmsKeyId != null) {
      result$
        ..add(const _i2.XmlElementName('KMSKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
