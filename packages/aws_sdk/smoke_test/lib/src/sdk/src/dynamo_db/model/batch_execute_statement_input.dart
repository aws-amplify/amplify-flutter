// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_execute_statement_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i3;

part 'batch_execute_statement_input.g.dart';

abstract class BatchExecuteStatementInput
    with
        _i1.HttpInput<BatchExecuteStatementInput>,
        _i2.AWSEquatable<BatchExecuteStatementInput>
    implements
        Built<BatchExecuteStatementInput, BatchExecuteStatementInputBuilder> {
  factory BatchExecuteStatementInput({
    _i3.ReturnConsumedCapacity? returnConsumedCapacity,
    required List<_i4.BatchStatementRequest> statements,
  }) {
    return _$BatchExecuteStatementInput._(
      returnConsumedCapacity: returnConsumedCapacity,
      statements: _i5.BuiltList(statements),
    );
  }

  factory BatchExecuteStatementInput.build(
          [void Function(BatchExecuteStatementInputBuilder) updates]) =
      _$BatchExecuteStatementInput;

  const BatchExecuteStatementInput._();

  factory BatchExecuteStatementInput.fromRequest(
    BatchExecuteStatementInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    BatchExecuteStatementInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchExecuteStatementInputBuilder b) {}

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// The list of PartiQL statements representing the batch to run.
  _i5.BuiltList<_i4.BatchStatementRequest> get statements;
  @override
  BatchExecuteStatementInput getPayload() => this;
  @override
  List<Object?> get props => [
        returnConsumedCapacity,
        statements,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchExecuteStatementInput');
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'statements',
      statements,
    );
    return helper.toString();
  }
}

class BatchExecuteStatementInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<BatchExecuteStatementInput> {
  const BatchExecuteStatementInputAwsJson10Serializer()
      : super('BatchExecuteStatementInput');

  @override
  Iterable<Type> get types => const [
        BatchExecuteStatementInput,
        _$BatchExecuteStatementInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchExecuteStatementInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchExecuteStatementInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ReturnConsumedCapacity),
            ) as _i3.ReturnConsumedCapacity);
          }
          break;
        case 'Statements':
          result.statements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.BatchStatementRequest)],
            ),
          ) as _i5.BuiltList<_i4.BatchStatementRequest>));
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
    final payload = (object as BatchExecuteStatementInput);
    final result = <Object?>[
      'Statements',
      serializers.serialize(
        payload.statements,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i4.BatchStatementRequest)],
        ),
      ),
    ];
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i3.ReturnConsumedCapacity),
        ));
    }
    return result;
  }
}
