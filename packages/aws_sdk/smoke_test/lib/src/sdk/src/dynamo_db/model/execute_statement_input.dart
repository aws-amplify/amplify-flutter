// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.execute_statement_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;

part 'execute_statement_input.g.dart';

abstract class ExecuteStatementInput
    with
        _i1.HttpInput<ExecuteStatementInput>,
        _i2.AWSEquatable<ExecuteStatementInput>
    implements Built<ExecuteStatementInput, ExecuteStatementInputBuilder> {
  factory ExecuteStatementInput({
    bool? consistentRead,
    int? limit,
    String? nextToken,
    List<_i3.AttributeValue>? parameters,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
    required String statement,
  }) {
    return _$ExecuteStatementInput._(
      consistentRead: consistentRead,
      limit: limit,
      nextToken: nextToken,
      parameters: parameters == null ? null : _i5.BuiltList(parameters),
      returnConsumedCapacity: returnConsumedCapacity,
      statement: statement,
    );
  }

  factory ExecuteStatementInput.build(
          [void Function(ExecuteStatementInputBuilder) updates]) =
      _$ExecuteStatementInput;

  const ExecuteStatementInput._();

  factory ExecuteStatementInput.fromRequest(
    ExecuteStatementInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ExecuteStatementInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteStatementInputBuilder b) {}

  /// The consistency of a read operation. If set to `true`, then a strongly consistent read is used; otherwise, an eventually consistent read is used.
  bool? get consistentRead;

  /// The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, along with a key in `LastEvaluatedKey` to apply in a subsequent operation so you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation.
  int? get limit;

  /// Set this value to get remaining results, if `NextToken` was returned in the statement response.
  String? get nextToken;

  /// The parameters for the PartiQL statement, if any.
  _i5.BuiltList<_i3.AttributeValue>? get parameters;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// The PartiQL statement representing the operation to run.
  String get statement;
  @override
  ExecuteStatementInput getPayload() => this;
  @override
  List<Object?> get props => [
        consistentRead,
        limit,
        nextToken,
        parameters,
        returnConsumedCapacity,
        statement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteStatementInput');
    helper.add(
      'consistentRead',
      consistentRead,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'statement',
      statement,
    );
    return helper.toString();
  }
}

class ExecuteStatementInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ExecuteStatementInput> {
  const ExecuteStatementInputAwsJson10Serializer()
      : super('ExecuteStatementInput');

  @override
  Iterable<Type> get types => const [
        ExecuteStatementInput,
        _$ExecuteStatementInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExecuteStatementInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecuteStatementInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConsistentRead':
          if (value != null) {
            result.consistentRead = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Parameters':
          if (value != null) {
            result.parameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.AttributeValue)],
              ),
            ) as _i5.BuiltList<_i3.AttributeValue>));
          }
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReturnConsumedCapacity),
            ) as _i4.ReturnConsumedCapacity);
          }
          break;
        case 'Statement':
          result.statement = (serializers.deserialize(
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
    final payload = (object as ExecuteStatementInput);
    final result = <Object?>[
      'Statement',
      serializers.serialize(
        payload.statement,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.consistentRead != null) {
      result
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          payload.consistentRead!,
          specifiedType: const FullType(bool),
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
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parameters != null) {
      result
        ..add('Parameters')
        ..add(serializers.serialize(
          payload.parameters!,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.AttributeValue)],
          ),
        ));
    }
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    return result;
  }
}
