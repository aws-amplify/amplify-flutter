// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.execute_transaction_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/parameterized_statement.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i4;

part 'execute_transaction_input.g.dart';

abstract class ExecuteTransactionInput
    with
        _i1.HttpInput<ExecuteTransactionInput>,
        _i2.AWSEquatable<ExecuteTransactionInput>
    implements Built<ExecuteTransactionInput, ExecuteTransactionInputBuilder> {
  factory ExecuteTransactionInput({
    required List<_i3.ParameterizedStatement> transactStatements,
    String? clientRequestToken,
    _i4.ReturnConsumedCapacity? returnConsumedCapacity,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientRequestToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientRequestToken ??= _i2.uuid(secure: true);
    }
    return _$ExecuteTransactionInput._(
      transactStatements: _i5.BuiltList(transactStatements),
      clientRequestToken: clientRequestToken,
      returnConsumedCapacity: returnConsumedCapacity,
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

  static const List<_i1.SmithySerializer<ExecuteTransactionInput>> serializers =
      [ExecuteTransactionInputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteTransactionInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientRequestToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientRequestToken = _i2.uuid(secure: true);
    }
  }

  /// The list of PartiQL statements representing the transaction to run.
  _i5.BuiltList<_i3.ParameterizedStatement> get transactStatements;

  /// Set this value to get remaining results, if `NextToken` was returned in the statement response.
  String? get clientRequestToken;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response. For more information, see [TransactGetItems](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html) and [TransactWriteItems](https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html).
  _i4.ReturnConsumedCapacity? get returnConsumedCapacity;
  @override
  ExecuteTransactionInput getPayload() => this;
  @override
  List<Object?> get props => [
        transactStatements,
        clientRequestToken,
        returnConsumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteTransactionInput')
      ..add(
        'transactStatements',
        transactStatements,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransactStatements':
          result.transactStatements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(_i3.ParameterizedStatement)],
            ),
          ) as _i5.BuiltList<_i3.ParameterizedStatement>));
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ReturnConsumedCapacity),
          ) as _i4.ReturnConsumedCapacity);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecuteTransactionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExecuteTransactionInput(
      :transactStatements,
      :clientRequestToken,
      :returnConsumedCapacity
    ) = object;
    result$.addAll([
      'TransactStatements',
      serializers.serialize(
        transactStatements,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i3.ParameterizedStatement)],
        ),
      ),
    ]);
    if (clientRequestToken != null) {
      result$
        ..add('ClientRequestToken')
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i4.ReturnConsumedCapacity),
        ));
    }
    return result$;
  }
}
