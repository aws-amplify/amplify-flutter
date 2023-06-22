// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.resource_evaluation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;

part 'resource_evaluation.g.dart';

/// Returns details of a resource evaluation.
abstract class ResourceEvaluation
    with _i1.AWSEquatable<ResourceEvaluation>
    implements Built<ResourceEvaluation, ResourceEvaluationBuilder> {
  /// Returns details of a resource evaluation.
  factory ResourceEvaluation({
    String? resourceEvaluationId,
    _i2.EvaluationMode? evaluationMode,
    DateTime? evaluationStartTimestamp,
  }) {
    return _$ResourceEvaluation._(
      resourceEvaluationId: resourceEvaluationId,
      evaluationMode: evaluationMode,
      evaluationStartTimestamp: evaluationStartTimestamp,
    );
  }

  /// Returns details of a resource evaluation.
  factory ResourceEvaluation.build(
          [void Function(ResourceEvaluationBuilder) updates]) =
      _$ResourceEvaluation;

  const ResourceEvaluation._();

  static const List<_i3.SmithySerializer<ResourceEvaluation>> serializers = [
    ResourceEvaluationAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceEvaluationBuilder b) {}

  /// The ResourceEvaluationId of a evaluation.
  String? get resourceEvaluationId;

  /// The mode of an evaluation. The valid values are Detective or Proactive.
  _i2.EvaluationMode? get evaluationMode;

  /// The starting time of an execution.
  DateTime? get evaluationStartTimestamp;
  @override
  List<Object?> get props => [
        resourceEvaluationId,
        evaluationMode,
        evaluationStartTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceEvaluation')
      ..add(
        'resourceEvaluationId',
        resourceEvaluationId,
      )
      ..add(
        'evaluationMode',
        evaluationMode,
      )
      ..add(
        'evaluationStartTimestamp',
        evaluationStartTimestamp,
      );
    return helper.toString();
  }
}

class ResourceEvaluationAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ResourceEvaluation> {
  const ResourceEvaluationAwsJson11Serializer() : super('ResourceEvaluation');

  @override
  Iterable<Type> get types => const [
        ResourceEvaluation,
        _$ResourceEvaluation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ResourceEvaluation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceEvaluationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceEvaluationId':
          result.resourceEvaluationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EvaluationMode':
          result.evaluationMode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationMode),
          ) as _i2.EvaluationMode);
        case 'EvaluationStartTimestamp':
          result.evaluationStartTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceEvaluation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ResourceEvaluation(
      :resourceEvaluationId,
      :evaluationMode,
      :evaluationStartTimestamp
    ) = object;
    if (resourceEvaluationId != null) {
      result$
        ..add('ResourceEvaluationId')
        ..add(serializers.serialize(
          resourceEvaluationId,
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
    if (evaluationStartTimestamp != null) {
      result$
        ..add('EvaluationStartTimestamp')
        ..add(serializers.serialize(
          evaluationStartTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
