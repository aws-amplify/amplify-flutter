// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.describe_stream_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stream_input.g.dart';

/// Represents the input of a `DescribeStream` operation.
abstract class DescribeStreamInput
    with
        _i1.HttpInput<DescribeStreamInput>,
        _i2.AWSEquatable<DescribeStreamInput>
    implements Built<DescribeStreamInput, DescribeStreamInputBuilder> {
  /// Represents the input of a `DescribeStream` operation.
  factory DescribeStreamInput({
    String? exclusiveStartShardId,
    int? limit,
    required String streamArn,
  }) {
    return _$DescribeStreamInput._(
      exclusiveStartShardId: exclusiveStartShardId,
      limit: limit,
      streamArn: streamArn,
    );
  }

  /// Represents the input of a `DescribeStream` operation.
  factory DescribeStreamInput.build(
          [void Function(DescribeStreamInputBuilder) updates]) =
      _$DescribeStreamInput;

  const DescribeStreamInput._();

  factory DescribeStreamInput.fromRequest(
    DescribeStreamInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeStreamInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStreamInputBuilder b) {}

  /// The shard ID of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedShardId` in the previous operation.
  String? get exclusiveStartShardId;

  /// The maximum number of shard objects to return. The upper limit is 100.
  int? get limit;

  /// The Amazon Resource Name (ARN) for the stream.
  String get streamArn;
  @override
  DescribeStreamInput getPayload() => this;
  @override
  List<Object?> get props => [
        exclusiveStartShardId,
        limit,
        streamArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStreamInput');
    helper.add(
      'exclusiveStartShardId',
      exclusiveStartShardId,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'streamArn',
      streamArn,
    );
    return helper.toString();
  }
}

class DescribeStreamInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeStreamInput> {
  const DescribeStreamInputAwsJson10Serializer() : super('DescribeStreamInput');

  @override
  Iterable<Type> get types => const [
        DescribeStreamInput,
        _$DescribeStreamInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeStreamInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStreamInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExclusiveStartShardId':
          if (value != null) {
            result.exclusiveStartShardId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
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
    final payload = (object as DescribeStreamInput);
    final result = <Object?>[
      'StreamArn',
      serializers.serialize(
        payload.streamArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.exclusiveStartShardId != null) {
      result
        ..add('ExclusiveStartShardId')
        ..add(serializers.serialize(
          payload.exclusiveStartShardId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
