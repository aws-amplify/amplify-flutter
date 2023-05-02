// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/policy_source_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/position.dart' as _i3;

part 'statement.g.dart';

/// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
///
/// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
abstract class Statement
    with _i1.AWSEquatable<Statement>
    implements Built<Statement, StatementBuilder> {
  /// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
  ///
  /// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
  factory Statement({
    String? sourcePolicyId,
    _i2.PolicySourceType? sourcePolicyType,
    _i3.Position? startPosition,
    _i3.Position? endPosition,
  }) {
    return _$Statement._(
      sourcePolicyId: sourcePolicyId,
      sourcePolicyType: sourcePolicyType,
      startPosition: startPosition,
      endPosition: endPosition,
    );
  }

  /// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
  ///
  /// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
  factory Statement.build([void Function(StatementBuilder) updates]) =
      _$Statement;

  const Statement._();

  static const List<_i4.SmithySerializer> serializers = [
    StatementAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StatementBuilder b) {}

  /// The identifier of the policy that was provided as an input.
  String? get sourcePolicyId;

  /// The type of the policy.
  _i2.PolicySourceType? get sourcePolicyType;

  /// The row and column of the beginning of the `Statement` in an IAM policy.
  _i3.Position? get startPosition;

  /// The row and column of the end of a `Statement` in an IAM policy.
  _i3.Position? get endPosition;
  @override
  List<Object?> get props => [
        sourcePolicyId,
        sourcePolicyType,
        startPosition,
        endPosition,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Statement');
    helper.add(
      'sourcePolicyId',
      sourcePolicyId,
    );
    helper.add(
      'sourcePolicyType',
      sourcePolicyType,
    );
    helper.add(
      'startPosition',
      startPosition,
    );
    helper.add(
      'endPosition',
      endPosition,
    );
    return helper.toString();
  }
}

class StatementAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<Statement> {
  const StatementAwsQuerySerializer() : super('Statement');

  @override
  Iterable<Type> get types => const [
        Statement,
        _$Statement,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Statement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SourcePolicyId':
          if (value != null) {
            result.sourcePolicyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourcePolicyType':
          if (value != null) {
            result.sourcePolicyType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PolicySourceType),
            ) as _i2.PolicySourceType);
          }
          break;
        case 'StartPosition':
          if (value != null) {
            result.startPosition.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Position),
            ) as _i3.Position));
          }
          break;
        case 'EndPosition':
          if (value != null) {
            result.endPosition.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Position),
            ) as _i3.Position));
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
    final payload = (object as Statement);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StatementResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.sourcePolicyId != null) {
      result
        ..add(const _i4.XmlElementName('SourcePolicyId'))
        ..add(serializers.serialize(
          payload.sourcePolicyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourcePolicyType != null) {
      result
        ..add(const _i4.XmlElementName('SourcePolicyType'))
        ..add(serializers.serialize(
          payload.sourcePolicyType!,
          specifiedType: const FullType.nullable(_i2.PolicySourceType),
        ));
    }
    if (payload.startPosition != null) {
      result
        ..add(const _i4.XmlElementName('StartPosition'))
        ..add(serializers.serialize(
          payload.startPosition!,
          specifiedType: const FullType(_i3.Position),
        ));
    }
    if (payload.endPosition != null) {
      result
        ..add(const _i4.XmlElementName('EndPosition'))
        ..add(serializers.serialize(
          payload.endPosition!,
          specifiedType: const FullType(_i3.Position),
        ));
    }
    return result;
  }
}
