// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.execute_transaction_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/parameterized_statement.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i3;

part 'execute_transaction_input.g.dart';

abstract class ExecuteTransactionInput
    with
        _i1.HttpInput<ExecuteTransactionInput>,
        _i2.AWSEquatable<ExecuteTransactionInput>
    implements Built<ExecuteTransactionInput, ExecuteTransactionInputBuilder> {
  factory ExecuteTransactionInput({
    String? clientRequestToken,
    _i3.ReturnConsumedCapacity? returnConsumedCapacity,
    required List<_i4.ParameterizedStatement> transactStatements,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientRequestToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientRequestToken ??= _i2.uuid(secure: true);
    }
    return _$ExecuteTransactionInput._(
      clientRequestToken: clientRequestToken,
      returnConsumedCapacity: returnConsumedCapacity,
      transactStatements: _i5.BuiltList(transactStatements),
    );
  }

  factory ExecuteTransactionInput.build(
          [void Function(ExecuteTransactionInputBuilder) updates]) =
      _$ExecuteTransactionInput;

  const ExecuteTransactionInput._();

  factory ExecuteTransactionInput.fromRequest(
    ExecuteTransactionInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ExecuteTransactionInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteTransactionInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientRequestToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientRequestToken = _i2.uuid(secure: true);
    }
  }

  /// Set this value to get remaining results, if `NextToken` was returned in the statement response.
  String? get clientRequestToken;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response. For more information, see [TransactGetItems](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html) and [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html).
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// The list of PartiQL statements representing the transaction to run.
  _i5.BuiltList<_i4.ParameterizedStatement> get transactStatements;
  @override
  ExecuteTransactionInput getPayload() => this;
  @override
  List<Object?> get props => [
        clientRequestToken,
        returnConsumedCapacity,
        transactStatements,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteTransactionInput');
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'transactStatements',
      transactStatements,
    );
    return helper.toString();
  }
}

class ExecuteTransactionInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ExecuteTransactionInput> {
  const ExecuteTransactionInputAwsJson10Serializer()
      : super('ExecuteTransactionInput');

  @override
  Iterable<Type> get types => const [
        ExecuteTransactionInput,
        _$ExecuteTransactionInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExecuteTransactionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecuteTransactionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ClientRequestToken':
          if (value != null) {
            result.clientRequestToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ReturnConsumedCapacity),
            ) as _i3.ReturnConsumedCapacity);
          }
          break;
        case 'TransactStatements':
          result.transactStatements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i4.ParameterizedStatement)],
            ),
          ) as _i5.BuiltList<_i4.ParameterizedStatement>));
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
    final payload = (object as ExecuteTransactionInput);
    final result = <Object?>[
      'TransactStatements',
      serializers.serialize(
        payload.transactStatements,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i4.ParameterizedStatement)],
        ),
      ),
    ];
    if (payload.clientRequestToken != null) {
      result
        ..add('ClientRequestToken')
        ..add(serializers.serialize(
          payload.clientRequestToken!,
          specifiedType: const FullType(String),
        ));
    }
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
