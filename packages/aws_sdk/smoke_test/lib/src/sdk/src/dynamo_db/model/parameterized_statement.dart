// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.parameterized_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_values_on_condition_check_failure.dart';

part 'parameterized_statement.g.dart';

/// Represents a PartiQL statment that uses parameters.
abstract class ParameterizedStatement
    with _i1.AWSEquatable<ParameterizedStatement>
    implements Built<ParameterizedStatement, ParameterizedStatementBuilder> {
  /// Represents a PartiQL statment that uses parameters.
  factory ParameterizedStatement({
    required String statement,
    List<AttributeValue>? parameters,
    ReturnValuesOnConditionCheckFailure? returnValuesOnConditionCheckFailure,
  }) {
    return _$ParameterizedStatement._(
      statement: statement,
      parameters: parameters == null ? null : _i2.BuiltList(parameters),
      returnValuesOnConditionCheckFailure: returnValuesOnConditionCheckFailure,
    );
  }

  /// Represents a PartiQL statment that uses parameters.
  factory ParameterizedStatement.build(
          [void Function(ParameterizedStatementBuilder) updates]) =
      _$ParameterizedStatement;

  const ParameterizedStatement._();

  static const List<_i3.SmithySerializer<ParameterizedStatement>> serializers =
      [ParameterizedStatementAwsJson10Serializer()];

  /// A PartiQL statment that uses parameters.
  String get statement;

  /// The parameter values.
  _i2.BuiltList<AttributeValue>? get parameters;

  /// An optional parameter that returns the item attributes for a PartiQL `ParameterizedStatement` operation that failed a condition check.
  ///
  /// There is no additional cost associated with requesting a return value aside from the small network and processing overhead of receiving a larger response. No read capacity units are consumed.
  ReturnValuesOnConditionCheckFailure? get returnValuesOnConditionCheckFailure;
  @override
  List<Object?> get props => [
        statement,
        parameters,
        returnValuesOnConditionCheckFailure,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ParameterizedStatement')
      ..add(
        'statement',
        statement,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'returnValuesOnConditionCheckFailure',
        returnValuesOnConditionCheckFailure,
      );
    return helper.toString();
  }
}

class ParameterizedStatementAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ParameterizedStatement> {
  const ParameterizedStatementAwsJson10Serializer()
      : super('ParameterizedStatement');

  @override
  Iterable<Type> get types => const [
        ParameterizedStatement,
        _$ParameterizedStatement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ParameterizedStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParameterizedStatementBuilder();
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
              _i2.BuiltList,
              [FullType(AttributeValue)],
            ),
          ) as _i2.BuiltList<AttributeValue>));
        case 'ReturnValuesOnConditionCheckFailure':
          result.returnValuesOnConditionCheckFailure = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnValuesOnConditionCheckFailure),
          ) as ReturnValuesOnConditionCheckFailure);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ParameterizedStatement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ParameterizedStatement(
      :statement,
      :parameters,
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
            _i2.BuiltList,
            [FullType(AttributeValue)],
          ),
        ));
    }
    if (returnValuesOnConditionCheckFailure != null) {
      result$
        ..add('ReturnValuesOnConditionCheckFailure')
        ..add(serializers.serialize(
          returnValuesOnConditionCheckFailure,
          specifiedType: const FullType(ReturnValuesOnConditionCheckFailure),
        ));
    }
    return result$;
  }
}
