// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.replica_global_secondary_index; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart'
    as _i2;

part 'replica_global_secondary_index.g.dart';

/// Represents the properties of a replica global secondary index.
abstract class ReplicaGlobalSecondaryIndex
    with _i1.AWSEquatable<ReplicaGlobalSecondaryIndex>
    implements
        Built<ReplicaGlobalSecondaryIndex, ReplicaGlobalSecondaryIndexBuilder> {
  /// Represents the properties of a replica global secondary index.
  factory ReplicaGlobalSecondaryIndex({
    required String indexName,
    _i2.ProvisionedThroughputOverride? provisionedThroughputOverride,
  }) {
    return _$ReplicaGlobalSecondaryIndex._(
      indexName: indexName,
      provisionedThroughputOverride: provisionedThroughputOverride,
    );
  }

  /// Represents the properties of a replica global secondary index.
  factory ReplicaGlobalSecondaryIndex.build(
          [void Function(ReplicaGlobalSecondaryIndexBuilder) updates]) =
      _$ReplicaGlobalSecondaryIndex;

  const ReplicaGlobalSecondaryIndex._();

  static const List<_i3.SmithySerializer> serializers = [
    ReplicaGlobalSecondaryIndexAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplicaGlobalSecondaryIndexBuilder b) {}

  /// The name of the global secondary index.
  String get indexName;

  /// Replica table GSI-specific provisioned throughput. If not specified, uses the source table GSI's read capacity settings.
  _i2.ProvisionedThroughputOverride? get provisionedThroughputOverride;
  @override
  List<Object?> get props => [
        indexName,
        provisionedThroughputOverride,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplicaGlobalSecondaryIndex');
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

class ReplicaGlobalSecondaryIndexAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ReplicaGlobalSecondaryIndex> {
  const ReplicaGlobalSecondaryIndexAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndex');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndex,
        _$ReplicaGlobalSecondaryIndex,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ReplicaGlobalSecondaryIndex deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplicaGlobalSecondaryIndexBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ReplicaGlobalSecondaryIndex);
    final result = <Object?>[
      'IndexName',
      serializers.serialize(
        payload.indexName,
        specifiedType: const FullType(String),
      ),
    ];
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
