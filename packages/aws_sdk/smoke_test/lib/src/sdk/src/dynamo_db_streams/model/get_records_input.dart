// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.get_records_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_records_input.g.dart';

/// Represents the input of a `GetRecords` operation.
abstract class GetRecordsInput
    with _i1.HttpInput<GetRecordsInput>, _i2.AWSEquatable<GetRecordsInput>
    implements Built<GetRecordsInput, GetRecordsInputBuilder> {
  /// Represents the input of a `GetRecords` operation.
  factory GetRecordsInput({
    required String shardIterator,
    int? limit,
  }) {
    return _$GetRecordsInput._(
      shardIterator: shardIterator,
      limit: limit,
    );
  }

  /// Represents the input of a `GetRecords` operation.
  factory GetRecordsInput.build(
      [void Function(GetRecordsInputBuilder) updates]) = _$GetRecordsInput;

  const GetRecordsInput._();

  factory GetRecordsInput.fromRequest(
    GetRecordsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetRecordsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRecordsInputBuilder b) {}

  /// A shard iterator that was retrieved from a previous GetShardIterator operation. This iterator can be used to access the stream records in this shard.
  String get shardIterator;

  /// The maximum number of records to return from the shard. The upper limit is 1000.
  int? get limit;
  @override
  GetRecordsInput getPayload() => this;
  @override
  List<Object?> get props => [
        shardIterator,
        limit,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRecordsInput');
    helper.add(
      'shardIterator',
      shardIterator,
    );
    helper.add(
      'limit',
      limit,
    );
    return helper.toString();
  }
}

class GetRecordsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<GetRecordsInput> {
  const GetRecordsInputAwsJson10Serializer() : super('GetRecordsInput');

  @override
  Iterable<Type> get types => const [
        GetRecordsInput,
        _$GetRecordsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetRecordsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRecordsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ShardIterator':
          result.shardIterator = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as GetRecordsInput);
    final result = <Object?>[
      'ShardIterator',
      serializers.serialize(
        payload.shardIterator,
        specifiedType: const FullType(String),
      ),
    ];
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
