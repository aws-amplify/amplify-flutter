// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.replica_global_secondary_index_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput_override.dart';

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
    ProvisionedThroughputOverride? provisionedThroughputOverride,
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

  static const List<
          _i2.SmithySerializer<ReplicaGlobalSecondaryIndexDescription>>
      serializers = [
    ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer()
  ];

  /// The name of the global secondary index.
  String? get indexName;

  /// If not described, uses the source table GSI's read capacity settings.
  ProvisionedThroughputOverride? get provisionedThroughputOverride;
  @override
  List<Object?> get props => [
        indexName,
        provisionedThroughputOverride,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplicaGlobalSecondaryIndexDescription')
          ..add(
            'indexName',
            indexName,
          )
          ..add(
            'provisionedThroughputOverride',
            provisionedThroughputOverride,
          );
    return helper.toString();
  }
}

class ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<ReplicaGlobalSecondaryIndexDescription> {
  const ReplicaGlobalSecondaryIndexDescriptionAwsJson10Serializer()
      : super('ReplicaGlobalSecondaryIndexDescription');

  @override
  Iterable<Type> get types => const [
        ReplicaGlobalSecondaryIndexDescription,
        _$ReplicaGlobalSecondaryIndexDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ProvisionedThroughputOverride':
          result.provisionedThroughputOverride.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProvisionedThroughputOverride),
          ) as ProvisionedThroughputOverride));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReplicaGlobalSecondaryIndexDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ReplicaGlobalSecondaryIndexDescription(
      :indexName,
      :provisionedThroughputOverride
    ) = object;
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (provisionedThroughputOverride != null) {
      result$
        ..add('ProvisionedThroughputOverride')
        ..add(serializers.serialize(
          provisionedThroughputOverride,
          specifiedType: const FullType(ProvisionedThroughputOverride),
        ));
    }
    return result$;
  }
}
