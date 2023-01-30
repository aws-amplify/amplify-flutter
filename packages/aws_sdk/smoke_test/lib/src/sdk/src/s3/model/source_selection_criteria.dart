// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.source_selection_criteria; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/sse_kms_encrypted_objects.dart'
    as _i3;

part 'source_selection_criteria.g.dart';

/// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
abstract class SourceSelectionCriteria
    with _i1.AWSEquatable<SourceSelectionCriteria>
    implements Built<SourceSelectionCriteria, SourceSelectionCriteriaBuilder> {
  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  factory SourceSelectionCriteria({
    _i2.ReplicaModifications? replicaModifications,
    _i3.SseKmsEncryptedObjects? sseKmsEncryptedObjects,
  }) {
    return _$SourceSelectionCriteria._(
      replicaModifications: replicaModifications,
      sseKmsEncryptedObjects: sseKmsEncryptedObjects,
    );
  }

  /// A container that describes additional filters for identifying the source objects that you want to replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3 supports only the filter that you can specify for objects created with server-side encryption using a customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).
  factory SourceSelectionCriteria.build(
          [void Function(SourceSelectionCriteriaBuilder) updates]) =
      _$SourceSelectionCriteria;

  const SourceSelectionCriteria._();

  static const List<_i4.SmithySerializer> serializers = [
    SourceSelectionCriteriaRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceSelectionCriteriaBuilder b) {}

  /// A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `Filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  ///
  /// If you don't specify the `Filter` element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed
  _i2.ReplicaModifications? get replicaModifications;

  /// A container for filter information for the selection of Amazon S3 objects encrypted with Amazon Web Services KMS. If you include `SourceSelectionCriteria` in the replication configuration, this element is required.
  _i3.SseKmsEncryptedObjects? get sseKmsEncryptedObjects;
  @override
  List<Object?> get props => [
        replicaModifications,
        sseKmsEncryptedObjects,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceSelectionCriteria');
    helper.add(
      'replicaModifications',
      replicaModifications,
    );
    helper.add(
      'sseKmsEncryptedObjects',
      sseKmsEncryptedObjects,
    );
    return helper.toString();
  }
}

class SourceSelectionCriteriaRestXmlSerializer
    extends _i4.StructuredSmithySerializer<SourceSelectionCriteria> {
  const SourceSelectionCriteriaRestXmlSerializer()
      : super('SourceSelectionCriteria');

  @override
  Iterable<Type> get types => const [
        SourceSelectionCriteria,
        _$SourceSelectionCriteria,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SourceSelectionCriteria deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceSelectionCriteriaBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ReplicaModifications':
          if (value != null) {
            result.replicaModifications.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReplicaModifications),
            ) as _i2.ReplicaModifications));
          }
          break;
        case 'SseKmsEncryptedObjects':
          if (value != null) {
            result.sseKmsEncryptedObjects.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SseKmsEncryptedObjects),
            ) as _i3.SseKmsEncryptedObjects));
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
    final payload = (object as SourceSelectionCriteria);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SourceSelectionCriteria',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.replicaModifications != null) {
      result
        ..add(const _i4.XmlElementName('ReplicaModifications'))
        ..add(serializers.serialize(
          payload.replicaModifications!,
          specifiedType: const FullType(_i2.ReplicaModifications),
        ));
    }
    if (payload.sseKmsEncryptedObjects != null) {
      result
        ..add(const _i4.XmlElementName('SseKmsEncryptedObjects'))
        ..add(serializers.serialize(
          payload.sseKmsEncryptedObjects!,
          specifiedType: const FullType(_i3.SseKmsEncryptedObjects),
        ));
    }
    return result;
  }
}
