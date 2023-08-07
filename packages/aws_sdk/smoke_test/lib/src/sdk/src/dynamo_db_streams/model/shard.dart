// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.model.shard; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/sequence_number_range.dart';

part 'shard.g.dart';

/// A uniquely identified group of stream records within a stream.
abstract class Shard
    with _i1.AWSEquatable<Shard>
    implements Built<Shard, ShardBuilder> {
  /// A uniquely identified group of stream records within a stream.
  factory Shard({
    String? shardId,
    SequenceNumberRange? sequenceNumberRange,
    String? parentShardId,
  }) {
    return _$Shard._(
      shardId: shardId,
      sequenceNumberRange: sequenceNumberRange,
      parentShardId: parentShardId,
    );
  }

  /// A uniquely identified group of stream records within a stream.
  factory Shard.build([void Function(ShardBuilder) updates]) = _$Shard;

  const Shard._();

  static const List<_i2.SmithySerializer<Shard>> serializers = [
    ShardAwsJson10Serializer()
  ];

  /// The system-generated identifier for this shard.
  String? get shardId;

  /// The range of possible sequence numbers for the shard.
  SequenceNumberRange? get sequenceNumberRange;

  /// The shard ID of the current shard's parent.
  String? get parentShardId;
  @override
  List<Object?> get props => [
        shardId,
        sequenceNumberRange,
        parentShardId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Shard')
      ..add(
        'shardId',
        shardId,
      )
      ..add(
        'sequenceNumberRange',
        sequenceNumberRange,
      )
      ..add(
        'parentShardId',
        parentShardId,
      );
    return helper.toString();
  }
}

class ShardAwsJson10Serializer extends _i2.StructuredSmithySerializer<Shard> {
  const ShardAwsJson10Serializer() : super('Shard');

  @override
  Iterable<Type> get types => const [
        Shard,
        _$Shard,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Shard deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShardBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ShardId':
          result.shardId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SequenceNumberRange':
          result.sequenceNumberRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SequenceNumberRange),
          ) as SequenceNumberRange));
        case 'ParentShardId':
          result.parentShardId = (serializers.deserialize(
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
    Shard object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Shard(:shardId, :sequenceNumberRange, :parentShardId) = object;
    if (shardId != null) {
      result$
        ..add('ShardId')
        ..add(serializers.serialize(
          shardId,
          specifiedType: const FullType(String),
        ));
    }
    if (sequenceNumberRange != null) {
      result$
        ..add('SequenceNumberRange')
        ..add(serializers.serialize(
          sequenceNumberRange,
          specifiedType: const FullType(SequenceNumberRange),
        ));
    }
    if (parentShardId != null) {
      result$
        ..add('ParentShardId')
        ..add(serializers.serialize(
          parentShardId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
