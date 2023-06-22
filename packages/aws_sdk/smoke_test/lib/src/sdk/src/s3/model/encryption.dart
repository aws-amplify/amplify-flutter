// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.encryption; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/server_side_encryption.dart'
    as _i2;

part 'encryption.g.dart';

/// Contains the type of server-side encryption used.
abstract class Encryption
    with _i1.AWSEquatable<Encryption>
    implements Built<Encryption, EncryptionBuilder> {
  /// Contains the type of server-side encryption used.
  factory Encryption({
    required _i2.ServerSideEncryption encryptionType,
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

  static const List<_i3.SmithySerializer<Encryption>> serializers = [
    EncryptionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EncryptionBuilder b) {}

  /// The server-side encryption algorithm used when storing job results in Amazon S3 (for example, AES256, `aws:kms`).
  _i2.ServerSideEncryption get encryptionType;

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
    extends _i3.StructuredSmithySerializer<Encryption> {
  const EncryptionRestXmlSerializer() : super('Encryption');

  @override
  Iterable<Type> get types => const [
        Encryption,
        _$Encryption,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
            specifiedType: const FullType(_i2.ServerSideEncryption),
          ) as _i2.ServerSideEncryption);
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
      const _i3.XmlElementName(
        'Encryption',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Encryption(:encryptionType, :kmsContext, :kmsKeyId) = object;
    result$
      ..add(const _i3.XmlElementName('EncryptionType'))
      ..add(serializers.serialize(
        encryptionType,
        specifiedType: const FullType.nullable(_i2.ServerSideEncryption),
      ));
    if (kmsContext != null) {
      result$
        ..add(const _i3.XmlElementName('KMSContext'))
        ..add(serializers.serialize(
          kmsContext,
          specifiedType: const FullType(String),
        ));
    }
    if (kmsKeyId != null) {
      result$
        ..add(const _i3.XmlElementName('KMSKeyId'))
        ..add(serializers.serialize(
          kmsKeyId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
