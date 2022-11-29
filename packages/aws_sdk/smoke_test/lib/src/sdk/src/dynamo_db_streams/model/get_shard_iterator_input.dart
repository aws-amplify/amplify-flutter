// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.get_shard_iterator_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard_iterator_type.dart'
    as _i3;

part 'get_shard_iterator_input.g.dart';

/// Represents the input of a `GetShardIterator` operation.
abstract class GetShardIteratorInput
    with
        _i1.HttpInput<GetShardIteratorInput>,
        _i2.AWSEquatable<GetShardIteratorInput>
    implements Built<GetShardIteratorInput, GetShardIteratorInputBuilder> {
  /// Represents the input of a `GetShardIterator` operation.
  factory GetShardIteratorInput({
    String? sequenceNumber,
    required String shardId,
    required _i3.ShardIteratorType shardIteratorType,
    required String streamArn,
  }) {
    return _$GetShardIteratorInput._(
      sequenceNumber: sequenceNumber,
      shardId: shardId,
      shardIteratorType: shardIteratorType,
      streamArn: streamArn,
    );
  }

  /// Represents the input of a `GetShardIterator` operation.
  factory GetShardIteratorInput.build(
          [void Function(GetShardIteratorInputBuilder) updates]) =
      _$GetShardIteratorInput;

  const GetShardIteratorInput._();

  factory GetShardIteratorInput.fromRequest(
    GetShardIteratorInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetShardIteratorInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetShardIteratorInputBuilder b) {}

  /// The sequence number of a stream record in the shard from which to start reading.
  String? get sequenceNumber;

  /// The identifier of the shard. The iterator will be returned for this shard ID.
  String get shardId;

  /// Determines how the shard iterator is used to start reading stream records from the shard:
  ///
  /// *   `AT\_SEQUENCE\_NUMBER` \- Start reading exactly from the position denoted by a specific sequence number.
  ///
  /// *   `AFTER\_SEQUENCE\_NUMBER` \- Start reading right after the position denoted by a specific sequence number.
  ///
  /// *   `TRIM_HORIZON` \- Start reading at the last (untrimmed) stream record, which is the oldest record in the shard. In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream.
  ///
  /// *   `LATEST` \- Start reading just after the most recent stream record in the shard, so that you always read the most recent data in the shard.
  _i3.ShardIteratorType get shardIteratorType;

  /// The Amazon Resource Name (ARN) for the stream.
  String get streamArn;
  @override
  GetShardIteratorInput getPayload() => this;
  @override
  List<Object?> get props => [
        sequenceNumber,
        shardId,
        shardIteratorType,
        streamArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetShardIteratorInput');
    helper.add(
      'sequenceNumber',
      sequenceNumber,
    );
    helper.add(
      'shardId',
      shardId,
    );
    helper.add(
      'shardIteratorType',
      shardIteratorType,
    );
    helper.add(
      'streamArn',
      streamArn,
    );
    return helper.toString();
  }
}

class GetShardIteratorInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GetShardIteratorInput> {
  const GetShardIteratorInputAwsJson10Serializer()
      : super('GetShardIteratorInput');

  @override
  Iterable<Type> get types => const [
        GetShardIteratorInput,
        _$GetShardIteratorInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetShardIteratorInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetShardIteratorInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'SequenceNumber':
          if (value != null) {
            result.sequenceNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ShardId':
          result.shardId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ShardIteratorType':
          result.shardIteratorType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.ShardIteratorType),
          ) as _i3.ShardIteratorType);
          break;
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as GetShardIteratorInput);
    final result = <Object?>[
      'ShardId',
      serializers.serialize(
        payload.shardId,
        specifiedType: const FullType(String),
      ),
      'ShardIteratorType',
      serializers.serialize(
        payload.shardIteratorType,
        specifiedType: const FullType(_i3.ShardIteratorType),
      ),
      'StreamArn',
      serializers.serialize(
        payload.streamArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.sequenceNumber != null) {
      result
        ..add('SequenceNumber')
        ..add(serializers.serialize(
          payload.sequenceNumber!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
