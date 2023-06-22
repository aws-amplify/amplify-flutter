// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.batch_execute_statement_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_response.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart'
    as _i3;

part 'batch_execute_statement_output.g.dart';

abstract class BatchExecuteStatementOutput
    with _i1.AWSEquatable<BatchExecuteStatementOutput>
    implements
        Built<BatchExecuteStatementOutput, BatchExecuteStatementOutputBuilder> {
  factory BatchExecuteStatementOutput({
    List<_i2.BatchStatementResponse>? responses,
    List<_i3.ConsumedCapacity>? consumedCapacity,
  }) {
    return _$BatchExecuteStatementOutput._(
      responses: responses == null ? null : _i4.BuiltList(responses),
      consumedCapacity:
          consumedCapacity == null ? null : _i4.BuiltList(consumedCapacity),
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

  static const List<_i5.SmithySerializer<BatchExecuteStatementOutput>>
      serializers = [BatchExecuteStatementOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchExecuteStatementOutputBuilder b) {}

  /// The response to each PartiQL statement in the batch.
  _i4.BuiltList<_i2.BatchStatementResponse>? get responses;

  /// The capacity units consumed by the entire operation. The values of the list are ordered according to the ordering of the statements.
  _i4.BuiltList<_i3.ConsumedCapacity>? get consumedCapacity;
  @override
  List<Object?> get props => [
        responses,
        consumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchExecuteStatementOutput')
      ..add(
        'responses',
        responses,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Responses':
          result.responses.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.BatchStatementResponse)],
            ),
          ) as _i4.BuiltList<_i2.BatchStatementResponse>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ConsumedCapacity)],
            ),
          ) as _i4.BuiltList<_i3.ConsumedCapacity>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchExecuteStatementOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchExecuteStatementOutput(:responses, :consumedCapacity) = object;
    if (responses != null) {
      result$
        ..add('Responses')
        ..add(serializers.serialize(
          responses,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.BatchStatementResponse)],
          ),
        ));
    }
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ConsumedCapacity)],
          ),
        ));
    }
    return result$;
  }
}
