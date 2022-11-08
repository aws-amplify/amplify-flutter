// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.parameterized_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i2;

part 'parameterized_statement.g.dart';

/// Represents a PartiQL statment that uses parameters.
abstract class ParameterizedStatement
    with _i1.AWSEquatable<ParameterizedStatement>
    implements Built<ParameterizedStatement, ParameterizedStatementBuilder> {
  /// Represents a PartiQL statment that uses parameters.
  factory ParameterizedStatement({
    List<_i2.AttributeValue>? parameters,
    required String statement,
  }) {
    return _$ParameterizedStatement._(
      parameters: parameters == null ? null : _i3.BuiltList(parameters),
      statement: statement,
    );
  }

  /// Represents a PartiQL statment that uses parameters.
  factory ParameterizedStatement.build(
          [void Function(ParameterizedStatementBuilder) updates]) =
      _$ParameterizedStatement;

  const ParameterizedStatement._();

  static const List<_i4.SmithySerializer> serializers = [
    ParameterizedStatementAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ParameterizedStatementBuilder b) {}

  /// The parameter values.
  _i3.BuiltList<_i2.AttributeValue>? get parameters;

  /// A PartiQL statment that uses parameters.
  String get statement;
  @override
  List<Object?> get props => [
        parameters,
        statement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ParameterizedStatement');
    helper.add(
      'parameters',
      parameters,
    );
    helper.add(
      'statement',
      statement,
    );
    return helper.toString();
  }
}

class ParameterizedStatementAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ParameterizedStatement> {
  const ParameterizedStatementAwsJson10Serializer()
      : super('ParameterizedStatement');

  @override
  Iterable<Type> get types => const [
        ParameterizedStatement,
        _$ParameterizedStatement,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'Parameters':
          if (value != null) {
            result.parameters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AttributeValue)],
              ),
            ) as _i3.BuiltList<_i2.AttributeValue>));
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
    final payload = (object as ParameterizedStatement);
    final result = <Object?>[
      'Statement',
      serializers.serialize(
        payload.statement,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.parameters != null) {
      result
        ..add('Parameters')
        ..add(serializers.serialize(
          payload.parameters!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AttributeValue)],
          ),
        ));
    }
    return result;
  }
}
