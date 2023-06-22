// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.get_shard_iterator_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_shard_iterator_output.g.dart';

/// Represents the output of a `GetShardIterator` operation.
abstract class GetShardIteratorOutput
    with _i1.AWSEquatable<GetShardIteratorOutput>
    implements Built<GetShardIteratorOutput, GetShardIteratorOutputBuilder> {
  /// Represents the output of a `GetShardIterator` operation.
  factory GetShardIteratorOutput({String? shardIterator}) {
    return _$GetShardIteratorOutput._(shardIterator: shardIterator);
  }

  /// Represents the output of a `GetShardIterator` operation.
  factory GetShardIteratorOutput.build(
          [void Function(GetShardIteratorOutputBuilder) updates]) =
      _$GetShardIteratorOutput;

  const GetShardIteratorOutput._();

  /// Constructs a [GetShardIteratorOutput] from a [payload] and [response].
  factory GetShardIteratorOutput.fromResponse(
    GetShardIteratorOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetShardIteratorOutput>> serializers =
      [GetShardIteratorOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetShardIteratorOutputBuilder b) {}

  /// The position in the shard from which to start reading stream records sequentially. A shard iterator specifies this position using the sequence number of a stream record in a shard.
  String? get shardIterator;
  @override
  List<Object?> get props => [shardIterator];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetShardIteratorOutput')
      ..add(
        'shardIterator',
        shardIterator,
      );
    return helper.toString();
  }
}

class GetShardIteratorOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<GetShardIteratorOutput> {
  const GetShardIteratorOutputAwsJson10Serializer()
      : super('GetShardIteratorOutput');

  @override
  Iterable<Type> get types => const [
        GetShardIteratorOutput,
        _$GetShardIteratorOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetShardIteratorOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetShardIteratorOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ShardIterator':
          result.shardIterator = (serializers.deserialize(
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
    GetShardIteratorOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetShardIteratorOutput(:shardIterator) = object;
    if (shardIterator != null) {
      result$
        ..add('ShardIterator')
        ..add(serializers.serialize(
          shardIterator,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
