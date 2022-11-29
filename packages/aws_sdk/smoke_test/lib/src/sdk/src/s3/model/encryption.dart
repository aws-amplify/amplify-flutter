// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    String? kmsContext,
    String? kmsKeyId,
  }) {
    return _$Encryption._(
      encryptionType: encryptionType,
      kmsContext: kmsContext,
      kmsKeyId: kmsKeyId,
    );
  }

  /// Contains the type of server-side encryption used.
  factory Encryption.build([void Function(EncryptionBuilder) updates]) =
      _$Encryption;

  const Encryption._();

  static const List<_i3.SmithySerializer> serializers = [
    EncryptionRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EncryptionBuilder b) {}

  /// The server-side encryption algorithm used when storing job results in Amazon S3 (for example, AES256, aws:kms).
  _i2.ServerSideEncryption get encryptionType;

  /// If the encryption type is `aws:kms`, this optional value can be used to specify the encryption context for the restore results.
  String? get kmsContext;

  /// If the encryption type is `aws:kms`, this optional value specifies the ID of the symmetric customer managed key to use for encryption of job results. Amazon S3 only supports symmetric keys. For more information, see [Using symmetric and asymmetric keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html) in the _Amazon Web Services Key Management Service Developer Guide_.
  String? get kmsKeyId;
  @override
  List<Object?> get props => [
        encryptionType,
        kmsContext,
        kmsKeyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Encryption');
    helper.add(
      'encryptionType',
      encryptionType,
    );
    helper.add(
      'kmsContext',
      kmsContext,
    );
    helper.add(
      'kmsKeyId',
      '***SENSITIVE***',
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EncryptionType':
          result.encryptionType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ServerSideEncryption),
          ) as _i2.ServerSideEncryption);
          break;
        case 'KMSContext':
          if (value != null) {
            result.kmsContext = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'KMSKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as Encryption);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Encryption',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('EncryptionType'))
      ..add(serializers.serialize(
        payload.encryptionType,
        specifiedType: const FullType.nullable(_i2.ServerSideEncryption),
      ));
    if (payload.kmsContext != null) {
      result
        ..add(const _i3.XmlElementName('KMSContext'))
        ..add(serializers.serialize(
          payload.kmsContext!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i3.XmlElementName('KMSKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
