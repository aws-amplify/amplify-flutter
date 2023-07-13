// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.batch_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart'
    as _i3;

part 'batch_statement_request.g.dart';

/// A PartiQL batch statement request.
abstract class BatchStatementRequest
    with _i1.AWSEquatable<BatchStatementRequest>
    implements Built<BatchStatementRequest, BatchStatementRequestBuilder> {
  /// A PartiQL batch statement request.
  factory BatchStatementRequest({
    required String statement,
    List<_i2.AttributeValue>? parameters,
    bool? consistentRead,
    _i3.ReturnValuesOnConditionCheckFailure?
        returnValuesOnConditionCheckFailure,
  }) {
    return _$BatchStatementRequest._(
      statement: statement,
      parameters: parameters == null ? null : _i4.BuiltList(parameters),
      consistentRead: consistentRead,
      returnValuesOnConditionCheckFailure: returnValuesOnConditionCheckFailure,
    );
  }

  /// A PartiQL batch statement request.
  factory BatchStatementRequest.build(
          [void Function(BatchStatementRequestBuilder) updates]) =
      _$BatchStatementRequest;

  const BatchStatementRequest._();

  static const List<_i5.SmithySerializer<BatchStatementRequest>> serializers = [
    BatchStatementRequestAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchStatementRequestBuilder b) {}

  /// A valid PartiQL statement.
  String get statement;

  /// The parameters associated with a PartiQL statement in the batch request.
  _i4.BuiltList<_i2.AttributeValue>? get parameters;

  /// The read consistency of the PartiQL batch request.
  bool? get consistentRead;

  /// An optional parameter that returns the item attributes for a PartiQL batch request operation that failed a condition check.
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  _i3.ReturnValuesOnConditionCheckFailure?
      get returnValuesOnConditionCheckFailure;
  @override
  List<Object?> get props => [
        statement,
        parameters,
        consistentRead,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchStatementRequest')
      ..add(
        'statement',
        statement,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'consistentRead',
        consistentRead,
      )
      ..add(
        'returnValuesOnConditionCheckFailure',
        returnValuesOnConditionCheckFailure,
      );
    return helper.toString();
  }
}

class BatchStatementRequestAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BatchStatementRequest> {
  const BatchStatementRequestAwsJson10Serializer()
      : super('BatchStatementRequest');

  @override
  Iterable<Type> get types => const [
        BatchStatementRequest,
        _$BatchStatementRequest,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Statement':
          result.statement = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.AttributeValue)],
            ),
          ) as _i4.BuiltList<_i2.AttributeValue>));
        case 'ConsistentRead':
          result.consistentRead = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ReturnValuesOnConditionCheckFailure':
          result.returnValuesOnConditionCheckFailure = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.ReturnValuesOnConditionCheckFailure),
          ) as _i3.ReturnValuesOnConditionCheckFailure);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchStatementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchStatementRequest(
      :statement,
      :parameters,
      :consistentRead,
      :returnValuesOnConditionCheckFailure
    ) = object;
    result$.addAll([
      'Statement',
      serializers.serialize(
        statement,
        specifiedType: const FullType(String),
      ),
    ]);
    if (parameters != null) {
      result$
        ..add('Parameters')
        ..add(serializers.serialize(
          parameters,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i2.AttributeValue)],
          ),
        ));
    }
    if (consistentRead != null) {
      result$
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          consistentRead,
          specifiedType: const FullType(bool),
        ));
    }
    if (returnValuesOnConditionCheckFailure != null) {
      result$
        ..add('ReturnValuesOnConditionCheckFailure')
        ..add(serializers.serialize(
          returnValuesOnConditionCheckFailure,
          specifiedType:
              const FullType(_i3.ReturnValuesOnConditionCheckFailure),
        ));
    }
    return result$;
  }
}
