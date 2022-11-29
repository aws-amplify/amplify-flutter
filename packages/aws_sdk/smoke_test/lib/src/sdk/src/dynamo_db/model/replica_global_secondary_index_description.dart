// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_global_secondary_index_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i2;

part 'replica_global_secondary_index_description.g.dart';

/// Represents the properties of a replica global secondary index.
abstract class ReplicaGlobalSecondaryIndexDescription
    with
        _i1.AWSEquatable<ReplicaGlobalSecondaryIndexDescription>
    implements
        Built<ReplicaGlobalSecondaryIndexDescription,
            ReplicaGlobalSecondaryIndexDescriptionBuilder> {
  /// Represents the properties of a replica global secondary index.
  factory ReplicaGlobalSecondaryIndexDescription({
    String? indexName,
    _i2.ProvisionedThroughputOverride? provisionedThroughputOverride,
  }) {
    return _$ReplicaGlobalSecondaryIndexDescription._(
      indexName: indexName,
      provisionedThroughputOverride: provisionedThroughputOverride,
    );
  }

  /// Represents the properties of a replica global secondary index.
  factory ReplicaGlobalSecondaryIndexDescription.build(
      [void Function(ReplicaGlobalSecondaryIndexDescriptionBuilder)
          updates]) = _$ReplicaGlobalSecondaryIndexDescription;

  const ReplicaGlobalSecondaryIndexDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaGlobalSecondaryIndexDescriptionBuilder b) {}

  /// The name of the global secondary index.
  String? get indexName;

  /// If not described, uses the source table GSI's read capacity settings.
  _i2.ProvisionedThroughputOverride? get provisionedThroughputOverride;
  @override
  List<Object?> get props => [
        indexName,
        provisionedThroughputOverride,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplicaGlobalSecondaryIndexDescription');
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'provisionedThroughputOverride',
      provisionedThroughputOverride,
    );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer extends _i3
    .StructuredSmithySerializer<ReplicaGlobalSecondaryIndexDescription> {
  const ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexDescription,
        _$ReplicaGlobalSecondaryIndexDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndexDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ProvisionedThroughputOverride':
          if (value != null) {
            result.provisionedThroughputOverride
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ProvisionedThroughputOverride),
            ) as _i2.ProvisionedThroughputOverride));
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
    final payload = (object as ReplicaGlobalSecondaryIndexDescription);
    final result = <Object?>[];
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.provisionedThroughputOverride != null) {
      result
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          payload.provisionedThroughputOverride!,
          specifiedType: const FullType(_i2.ProvisionedThroughputOverride),
        ));
    }
    return result;
  }
}
