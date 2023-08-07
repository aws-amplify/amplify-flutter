// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.sse_kms_encrypted_objects; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects_status.dart';

part 'sse_kms_encrypted_objects.g.dart';

/// A container for filter information for the selection of S3 objects encrypted with Amazon Web Services KMS.
abstract class SseKmsEncryptedObjects
    with _i1.AWSEquatable<SseKmsEncryptedObjects>
    implements Built<SseKmsEncryptedObjects, SseKmsEncryptedObjectsBuilder> {
  /// A container for filter information for the selection of S3 objects encrypted with Amazon Web Services KMS.
  factory SseKmsEncryptedObjects(
      {required SseKmsEncryptedObjectsStatus status}) {
    return _$SseKmsEncryptedObjects._(status: status);
  }

  /// A container for filter information for the selection of S3 objects encrypted with Amazon Web Services KMS.
  factory SseKmsEncryptedObjects.build(
          [void Function(SseKmsEncryptedObjectsBuilder) updates]) =
      _$SseKmsEncryptedObjects;

  const SseKmsEncryptedObjects._();

  static const List<_i2.SmithySerializer<SseKmsEncryptedObjects>> serializers =
      [SseKmsEncryptedObjectsRestXmlSerializer()];

  /// Specifies whether Amazon S3 replicates objects created with server-side encryption using an Amazon Web Services KMS key stored in Amazon Web Services Key Management Service.
  SseKmsEncryptedObjectsStatus get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SseKmsEncryptedObjects')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class SseKmsEncryptedObjectsRestXmlSerializer
    extends _i2.StructuredSmithySerializer<SseKmsEncryptedObjects> {
  const SseKmsEncryptedObjectsRestXmlSerializer()
      : super('SseKmsEncryptedObjects');

  @override
  Iterable<Type> get types => const [
        SseKmsEncryptedObjects,
        _$SseKmsEncryptedObjects,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SseKmsEncryptedObjects deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SseKmsEncryptedObjectsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(SseKmsEncryptedObjectsStatus),
          ) as SseKmsEncryptedObjectsStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SseKmsEncryptedObjects object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SseKmsEncryptedObjects',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final SseKmsEncryptedObjects(:status) = object;
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(SseKmsEncryptedObjectsStatus),
      ));
    return result$;
  }
}
