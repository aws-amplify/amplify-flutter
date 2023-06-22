// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_context; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'evaluation_context.g.dart';

/// Use EvaluationContext to group independently initiated proactive resource evaluations. For example, CFN Stack. If you want to check just a resource definition, you do not need to provide evaluation context.
abstract class EvaluationContext
    with _i1.AWSEquatable<EvaluationContext>
    implements Built<EvaluationContext, EvaluationContextBuilder> {
  /// Use EvaluationContext to group independently initiated proactive resource evaluations. For example, CFN Stack. If you want to check just a resource definition, you do not need to provide evaluation context.
  factory EvaluationContext({String? evaluationContextIdentifier}) {
    return _$EvaluationContext._(
        evaluationContextIdentifier: evaluationContextIdentifier);
  }

  /// Use EvaluationContext to group independently initiated proactive resource evaluations. For example, CFN Stack. If you want to check just a resource definition, you do not need to provide evaluation context.
  factory EvaluationContext.build(
      [void Function(EvaluationContextBuilder) updates]) = _$EvaluationContext;

  const EvaluationContext._();

  static const List<_i2.SmithySerializer<EvaluationContext>> serializers = [
    EvaluationContextAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationContextBuilder b) {}

  /// A unique EvaluationContextIdentifier ID for an EvaluationContext.
  String? get evaluationContextIdentifier;
  @override
  List<Object?> get props => [evaluationContextIdentifier];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationContext')
      ..add(
        'evaluationContextIdentifier',
        evaluationContextIdentifier,
      );
    return helper.toString();
  }
}

class EvaluationContextAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<EvaluationContext> {
  const EvaluationContextAwsJson11Serializer() : super('EvaluationContext');

  @override
  Iterable<Type> get types => const [
        EvaluationContext,
        _$EvaluationContext,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationContext deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationContextBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvaluationContextIdentifier':
          result.evaluationContextIdentifier = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EvaluationContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EvaluationContext(:evaluationContextIdentifier) = object;
    if (evaluationContextIdentifier != null) {
      result$
        ..add('EvaluationContextIdentifier')
        ..add(serializers.serialize(
          evaluationContextIdentifier,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
