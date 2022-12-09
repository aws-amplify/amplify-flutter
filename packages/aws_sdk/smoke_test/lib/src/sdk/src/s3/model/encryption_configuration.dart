// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.encryption_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'encryption_configuration.g.dart';

/// Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
abstract class EncryptionConfiguration
    with _i1.AWSEquatable<EncryptionConfiguration>
    implements Built<EncryptionConfiguration, EncryptionConfigurationBuilder> {
  /// Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  factory EncryptionConfiguration({String? replicaKmsKeyId}) {
    return _$EncryptionConfiguration._(replicaKmsKeyId: replicaKmsKeyId);
  }

  /// Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated objects.
  factory EncryptionConfiguration.build(
          [void Function(EncryptionConfigurationBuilder) updates]) =
      _$EncryptionConfiguration;

  const EncryptionConfiguration._();

  static const List<_i2.SmithySerializer> serializers = [
    EncryptionConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EncryptionConfigurationBuilder b) {}

  /// Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon Web Services KMS key stored in Amazon Web Services Key Management Service (KMS) for the destination bucket. Amazon S3 uses this key to encrypt replica objects. Amazon S3 only supports symmetric, customer managed KMS keys. For more information, see [Using symmetric and asymmetric keys](https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html) in the _Amazon Web Services Key Management Service Developer Guide_.
  String? get replicaKmsKeyId;
  @override
  List<Object?> get props => [replicaKmsKeyId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EncryptionConfiguration');
    helper.add(
      'replicaKmsKeyId',
      replicaKmsKeyId,
    );
    return helper.toString();
  }
}

class EncryptionConfigurationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<EncryptionConfiguration> {
  const EncryptionConfigurationRestXmlSerializer()
      : super('EncryptionConfiguration');

  @override
  Iterable<Type> get types => const [
        EncryptionConfiguration,
        _$EncryptionConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  EncryptionConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EncryptionConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ReplicaKmsKeyID':
          if (value != null) {
            result.replicaKmsKeyId = (serializers.deserialize(
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
    final payload = (object as EncryptionConfiguration);
    final result = <Object?>[
      const _i2.XmlElementName(
        'EncryptionConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.replicaKmsKeyId != null) {
      result
        ..add(const _i2.XmlElementName('ReplicaKmsKeyID'))
        ..add(serializers.serialize(
          payload.replicaKmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
