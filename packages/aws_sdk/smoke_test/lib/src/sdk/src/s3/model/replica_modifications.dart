// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.replica_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/replica_modifications_status.dart';

part 'replica_modifications.g.dart';

/// A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `Filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
///
/// If you don't specify the `Filter` element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed.
abstract class ReplicaModifications
    with _i1.AWSEquatable<ReplicaModifications>
    implements Built<ReplicaModifications, ReplicaModificationsBuilder> {
  /// A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `Filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  ///
  /// If you don't specify the `Filter` element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed.
  factory ReplicaModifications({required ReplicaModificationsStatus status}) {
    return _$ReplicaModifications._(status: status);
  }

  /// A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when `Filter` is specified), you can specify this element and set the status to `Enabled` to replicate modifications on replicas.
  ///
  /// If you don't specify the `Filter` element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed.
  factory ReplicaModifications.build(
          [void Function(ReplicaModificationsBuilder) updates]) =
      _$ReplicaModifications;

  const ReplicaModifications._();

  static const List<_i2.SmithySerializer<ReplicaModifications>> serializers = [
    ReplicaModificationsRestXmlSerializer()
  ];

  /// Specifies whether Amazon S3 replicates modifications on replicas.
  ReplicaModificationsStatus get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaModifications')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class ReplicaModificationsRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ReplicaModifications> {
  const ReplicaModificationsRestXmlSerializer() : super('ReplicaModifications');

  @override
  Iterable<Type> get types => const [
        ReplicaModifications,
        _$ReplicaModifications,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ReplicaModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaModificationsBuilder();
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
            specifiedType: const FullType(ReplicaModificationsStatus),
          ) as ReplicaModificationsStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaModifications object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReplicaModifications',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ReplicaModifications(:status) = object;
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType(ReplicaModificationsStatus),
      ));
    return result$;
  }
}
