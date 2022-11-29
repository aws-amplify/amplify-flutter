// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.get_records_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/record.dart'
    as _i2;

part 'get_records_output.g.dart';

/// Represents the output of a `GetRecords` operation.
abstract class GetRecordsOutput
    with _i1.AWSEquatable<GetRecordsOutput>
    implements Built<GetRecordsOutput, GetRecordsOutputBuilder> {
  /// Represents the output of a `GetRecords` operation.
  factory GetRecordsOutput({
    String? nextShardIterator,
    List<_i2.Record>? records,
  }) {
    return _$GetRecordsOutput._(
      nextShardIterator: nextShardIterator,
      records: records == null ? null : _i3.BuiltList(records),
    );
  }

  /// Represents the output of a `GetRecords` operation.
  factory GetRecordsOutput.build(
      [void Function(GetRecordsOutputBuilder) updates]) = _$GetRecordsOutput;

  const GetRecordsOutput._();

  /// Constructs a [GetRecordsOutput] from a [payload] and [response].
  factory GetRecordsOutput.fromResponse(
    GetRecordsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetRecordsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRecordsOutputBuilder b) {}

  /// The next position in the shard from which to start sequentially reading stream records. If set to `null`, the shard has been closed and the requested iterator will not return any more data.
  String? get nextShardIterator;

  /// The stream records from the shard, which were retrieved using the shard iterator.
  _i3.BuiltList<_i2.Record>? get records;
  @override
  List<Object?> get props => [
        nextShardIterator,
        records,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRecordsOutput');
    helper.add(
      'nextShardIterator',
      nextShardIterator,
    );
    helper.add(
      'records',
      records,
    );
    return helper.toString();
  }
}

class GetRecordsOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<GetRecordsOutput> {
  const GetRecordsOutputAwsJson10Serializer() : super('GetRecordsOutput');

  @override
  Iterable<Type> get types => const [
        GetRecordsOutput,
        _$GetRecordsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GetRecordsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRecordsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextShardIterator':
          if (value != null) {
            result.nextShardIterator = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Records':
          if (value != null) {
            result.records.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Record)],
              ),
            ) as _i3.BuiltList<_i2.Record>));
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
    final payload = (object as GetRecordsOutput);
    final result = <Object?>[];
    if (payload.nextShardIterator != null) {
      result
        ..add('NextShardIterator')
        ..add(serializers.serialize(
          payload.nextShardIterator!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.records != null) {
      result
        ..add('Records')
        ..add(serializers.serialize(
          payload.records!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Record)],
          ),
        ));
    }
    return result;
  }
}
