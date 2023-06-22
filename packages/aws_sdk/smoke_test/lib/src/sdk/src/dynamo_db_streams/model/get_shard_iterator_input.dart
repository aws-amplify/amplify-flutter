// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String streamArn,
    required String shardId,
    required _i3.ShardIteratorType shardIteratorType,
    String? sequenceNumber,
  }) {
    return _$GetShardIteratorInput._(
      streamArn: streamArn,
      shardId: shardId,
      shardIteratorType: shardIteratorType,
      sequenceNumber: sequenceNumber,
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

  static const List<_i1.SmithySerializer<GetShardIteratorInput>> serializers = [
    GetShardIteratorInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetShardIteratorInputBuilder b) {}

  /// The Amazon Resource Name (ARN) for the stream.
  String get streamArn;

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

  /// The sequence number of a stream record in the shard from which to start reading.
  String? get sequenceNumber;
  @override
  GetShardIteratorInput getPayload() => this;
  @override
  List<Object?> get props => [
        streamArn,
        shardId,
        shardIteratorType,
        sequenceNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetShardIteratorInput')
      ..add(
        'streamArn',
        streamArn,
      )
      ..add(
        'shardId',
        shardId,
      )
      ..add(
        'shardIteratorType',
        shardIteratorType,
      )
      ..add(
        'sequenceNumber',
        sequenceNumber,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ShardId':
          result.shardId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ShardIteratorType':
          result.shardIteratorType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ShardIteratorType),
          ) as _i3.ShardIteratorType);
        case 'SequenceNumber':
          result.sequenceNumber = (serializers.deserialize(
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
    GetShardIteratorInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetShardIteratorInput(
      :streamArn,
      :shardId,
      :shardIteratorType,
      :sequenceNumber
    ) = object;
    result$.addAll([
      'StreamArn',
      serializers.serialize(
        streamArn,
        specifiedType: const FullType(String),
      ),
      'ShardId',
      serializers.serialize(
        shardId,
        specifiedType: const FullType(String),
      ),
      'ShardIteratorType',
      serializers.serialize(
        shardIteratorType,
        specifiedType: const FullType(_i3.ShardIteratorType),
      ),
    ]);
    if (sequenceNumber != null) {
      result$
        ..add('SequenceNumber')
        ..add(serializers.serialize(
          sequenceNumber,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
