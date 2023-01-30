// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_execute_statement_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i2;

part 'batch_execute_statement_output.g.dart';

abstract class BatchExecuteStatementOutput
    with _i1.AWSEquatable<BatchExecuteStatementOutput>
    implements
        Built<BatchExecuteStatementOutput, BatchExecuteStatementOutputBuilder> {
  factory BatchExecuteStatementOutput({
    List<_i2.ConsumedCapacity>? consumedCapacity,
    List<_i3.BatchStatementResponse>? responses,
  }) {
    return _$BatchExecuteStatementOutput._(
      consumedCapacity:
          consumedCapacity == null ? null : _i4.BuiltList(consumedCapacity),
      responses: responses == null ? null : _i4.BuiltList(responses),
    );
  }

  factory BatchExecuteStatementOutput.build(
          [void Function(BatchExecuteStatementOutputBuilder) updates]) =
      _$BatchExecuteStatementOutput;

  const BatchExecuteStatementOutput._();

  /// Constructs a [BatchExecuteStatementOutput] from a [payload] and [response].
  factory BatchExecuteStatementOutput.fromResponse(
    BatchExecuteStatementOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    BatchExecuteStatementOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchExecuteStatementOutputBuilder b) {}

  /// The capacity units consumed by the entire operation. The values of the list are ordered according to the ordering of the statements.
  _i4.BuiltList<_i2.ConsumedCapacity>? get consumedCapacity;

  /// The response to each PartiQL statement in the batch.
  _i4.BuiltList<_i3.BatchStatementResponse>? get responses;
  @override
  List<Object?> get props => [
        consumedCapacity,
        responses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchExecuteStatementOutput');
    helper.add(
      'consumedCapacity',
      consumedCapacity,
    );
    helper.add(
      'responses',
      responses,
    );
    return helper.toString();
  }
}

class BatchExecuteStatementOutputAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BatchExecuteStatementOutput> {
  const BatchExecuteStatementOutputAwsJson10Serializer()
      : super('BatchExecuteStatementOutput');

  @override
  Iterable<Type> get types => const [
        BatchExecuteStatementOutput,
        _$BatchExecuteStatementOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchExecuteStatementOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchExecuteStatementOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConsumedCapacity':
          if (value != null) {
            result.consumedCapacity.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.ConsumedCapacity)],
              ),
            ) as _i4.BuiltList<_i2.ConsumedCapacity>));
          }
          break;
        case 'Responses':
          if (value != null) {
            result.responses.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.BatchStatementResponse)],
              ),
            ) as _i4.BuiltList<_i3.BatchStatementResponse>));
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
    final payload = (object as BatchExecuteStatementOutput);
    final result = <Object?>[];
    if (payload.consumedCapacity != null) {
      result
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          payload.consumedCapacity!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.ConsumedCapacity)],
          ),
        ));
    }
    if (payload.responses != null) {
      result
        ..add('Responses')
        ..add(serializers.serialize(
          payload.responses!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.BatchStatementResponse)],
          ),
        ));
    }
    return result;
  }
}
