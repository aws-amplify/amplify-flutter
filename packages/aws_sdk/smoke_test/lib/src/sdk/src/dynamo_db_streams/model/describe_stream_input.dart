// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String streamArn,
    int? limit,
    String? exclusiveStartShardId,
  }) {
    return _$DescribeStreamInput._(
      streamArn: streamArn,
      limit: limit,
      exclusiveStartShardId: exclusiveStartShardId,
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

  static const List<_i1.SmithySerializer<DescribeStreamInput>> serializers = [
    DescribeStreamInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStreamInputBuilder b) {}

  /// The Amazon Resource Name (ARN) for the stream.
  String get streamArn;

  /// The maximum number of shard objects to return. The upper limit is 100.
  int? get limit;

  /// The shard ID of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedShardId` in the previous operation.
  String? get exclusiveStartShardId;
  @override
  DescribeStreamInput getPayload() => this;
  @override
  List<Object?> get props => [
        streamArn,
        limit,
        exclusiveStartShardId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStreamInput')
      ..add(
        'streamArn',
        streamArn,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'exclusiveStartShardId',
        exclusiveStartShardId,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ExclusiveStartShardId':
          result.exclusiveStartShardId = (serializers.deserialize(
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
    DescribeStreamInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeStreamInput(:streamArn, :limit, :exclusiveStartShardId) =
        object;
    result$.addAll([
      'StreamArn',
      serializers.serialize(
        streamArn,
        specifiedType: const FullType(String),
      ),
    ]);
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (exclusiveStartShardId != null) {
      result$
        ..add('ExclusiveStartShardId')
        ..add(serializers.serialize(
          exclusiveStartShardId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
