// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.shard; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/sequence_number_range.dart'
    as _i2;

part 'shard.g.dart';

/// A uniquely identified group of stream records within a stream.
abstract class Shard
    with _i1.AWSEquatable<Shard>
    implements Built<Shard, ShardBuilder> {
  /// A uniquely identified group of stream records within a stream.
  factory Shard({
    String? parentShardId,
    _i2.SequenceNumberRange? sequenceNumberRange,
    String? shardId,
  }) {
    return _$Shard._(
      parentShardId: parentShardId,
      sequenceNumberRange: sequenceNumberRange,
      shardId: shardId,
    );
  }

  /// A uniquely identified group of stream records within a stream.
  factory Shard.build([void Function(ShardBuilder) updates]) = _$Shard;

  const Shard._();

  static const List<_i3.SmithySerializer> serializers = [
    ShardAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ShardBuilder b) {}

  /// The shard ID of the current shard's parent.
  String? get parentShardId;

  /// The range of possible sequence numbers for the shard.
  _i2.SequenceNumberRange? get sequenceNumberRange;

  /// The system-generated identifier for this shard.
  String? get shardId;
  @override
  List<Object?> get props => [
        parentShardId,
        sequenceNumberRange,
        shardId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Shard');
    helper.add(
      'parentShardId',
      parentShardId,
    );
    helper.add(
      'sequenceNumberRange',
      sequenceNumberRange,
    );
    helper.add(
      'shardId',
      shardId,
    );
    return helper.toString();
  }
}

class ShardAwsJson10Serializer extends _i3.StructuredSmithySerializer<Shard> {
  const ShardAwsJson10Serializer() : super('Shard');

  @override
  Iterable<Type> get types => const [
        Shard,
        _$Shard,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'ParentShardId':
          if (value != null) {
            result.parentShardId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SequenceNumberRange':
          if (value != null) {
            result.sequenceNumberRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SequenceNumberRange),
            ) as _i2.SequenceNumberRange));
          }
          break;
        case 'ShardId':
          if (value != null) {
            result.shardId = (serializers.deserialize(
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
    final payload = (object as Shard);
    final result = <Object?>[];
    if (payload.parentShardId != null) {
      result
        ..add('ParentShardId')
        ..add(serializers.serialize(
          payload.parentShardId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sequenceNumberRange != null) {
      result
        ..add('SequenceNumberRange')
        ..add(serializers.serialize(
          payload.sequenceNumberRange!,
          specifiedType: const FullType(_i2.SequenceNumberRange),
        ));
    }
    if (payload.shardId != null) {
      result
        ..add('ShardId')
        ..add(serializers.serialize(
          payload.shardId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
