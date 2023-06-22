// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    List<_i2.Record>? records,
    String? nextShardIterator,
  }) {
    return _$GetRecordsOutput._(
      records: records == null ? null : _i3.BuiltList(records),
      nextShardIterator: nextShardIterator,
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

  static const List<_i4.SmithySerializer<GetRecordsOutput>> serializers = [
    GetRecordsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetRecordsOutputBuilder b) {}

  /// The stream records from the shard, which were retrieved using the shard iterator.
  _i3.BuiltList<_i2.Record>? get records;

  /// The next position in the shard from which to start sequentially reading stream records. If set to `null`, the shard has been closed and the requested iterator will not return any more data.
  String? get nextShardIterator;
  @override
  List<Object?> get props => [
        records,
        nextShardIterator,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetRecordsOutput')
      ..add(
        'records',
        records,
      )
      ..add(
        'nextShardIterator',
        nextShardIterator,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Records':
          result.records.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Record)],
            ),
          ) as _i3.BuiltList<_i2.Record>));
        case 'NextShardIterator':
          result.nextShardIterator = (serializers.deserialize(
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
    GetRecordsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetRecordsOutput(:records, :nextShardIterator) = object;
    if (records != null) {
      result$
        ..add('Records')
        ..add(serializers.serialize(
          records,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Record)],
          ),
        ));
    }
    if (nextShardIterator != null) {
      result$
        ..add('NextShardIterator')
        ..add(serializers.serialize(
          nextShardIterator,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
