// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_result_qualifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;

part 'evaluation_result_qualifier.g.dart';

/// Identifies an Config rule that evaluated an Amazon Web Services resource, and provides the type and ID of the resource that the rule evaluated.
abstract class EvaluationResultQualifier
    with _i1.AWSEquatable<EvaluationResultQualifier>
    implements
        Built<EvaluationResultQualifier, EvaluationResultQualifierBuilder> {
  /// Identifies an Config rule that evaluated an Amazon Web Services resource, and provides the type and ID of the resource that the rule evaluated.
  factory EvaluationResultQualifier({
    String? configRuleName,
    String? resourceType,
    String? resourceId,
    _i2.EvaluationMode? evaluationMode,
  }) {
    return _$EvaluationResultQualifier._(
      configRuleName: configRuleName,
      resourceType: resourceType,
      resourceId: resourceId,
      evaluationMode: evaluationMode,
    );
  }

  /// Identifies an Config rule that evaluated an Amazon Web Services resource, and provides the type and ID of the resource that the rule evaluated.
  factory EvaluationResultQualifier.build(
          [void Function(EvaluationResultQualifierBuilder) updates]) =
      _$EvaluationResultQualifier;

  const EvaluationResultQualifier._();

  static const List<_i3.SmithySerializer<EvaluationResultQualifier>>
      serializers = [EvaluationResultQualifierAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationResultQualifierBuilder b) {}

  /// The name of the Config rule that was used in the evaluation.
  String? get configRuleName;

  /// The type of Amazon Web Services resource that was evaluated.
  String? get resourceType;

  /// The ID of the evaluated Amazon Web Services resource.
  String? get resourceId;

  /// The mode of an evaluation. The valid values are Detective or Proactive.
  _i2.EvaluationMode? get evaluationMode;
  @override
  List<Object?> get props => [
        configRuleName,
        resourceType,
        resourceId,
        evaluationMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationResultQualifier')
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'evaluationMode',
        evaluationMode,
      );
    return helper.toString();
  }
}

class EvaluationResultQualifierAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<EvaluationResultQualifier> {
  const EvaluationResultQualifierAwsJson11Serializer()
      : super('EvaluationResultQualifier');

  @override
  Iterable<Type> get types => const [
        EvaluationResultQualifier,
        _$EvaluationResultQualifier,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationResultQualifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationResultQualifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvaluationMode':
          result.evaluationMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationMode),
          ) as _i2.EvaluationMode);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EvaluationResultQualifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EvaluationResultQualifier(
      :configRuleName,
      :resourceType,
      :resourceId,
      :evaluationMode
    ) = object;
    if (configRuleName != null) {
      result$
        ..add('ConfigRuleName')
        ..add(serializers.serialize(
          configRuleName,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('ResourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (evaluationMode != null) {
      result$
        ..add('EvaluationMode')
        ..add(serializers.serialize(
          evaluationMode,
          specifiedType: const FullType(_i2.EvaluationMode),
        ));
    }
    return result$;
  }
}
