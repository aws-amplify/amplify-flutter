// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.evaluation_result_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_result_qualifier.dart'
    as _i2;

part 'evaluation_result_identifier.g.dart';

/// Uniquely identifies an evaluation result.
abstract class EvaluationResultIdentifier
    with _i1.AWSEquatable<EvaluationResultIdentifier>
    implements
        Built<EvaluationResultIdentifier, EvaluationResultIdentifierBuilder> {
  /// Uniquely identifies an evaluation result.
  factory EvaluationResultIdentifier({
    _i2.EvaluationResultQualifier? evaluationResultQualifier,
    DateTime? orderingTimestamp,
    String? resourceEvaluationId,
  }) {
    return _$EvaluationResultIdentifier._(
      evaluationResultQualifier: evaluationResultQualifier,
      orderingTimestamp: orderingTimestamp,
      resourceEvaluationId: resourceEvaluationId,
    );
  }

  /// Uniquely identifies an evaluation result.
  factory EvaluationResultIdentifier.build(
          [void Function(EvaluationResultIdentifierBuilder) updates]) =
      _$EvaluationResultIdentifier;

  const EvaluationResultIdentifier._();

  static const List<_i3.SmithySerializer<EvaluationResultIdentifier>>
      serializers = [EvaluationResultIdentifierAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationResultIdentifierBuilder b) {}

  /// Identifies an Config rule used to evaluate an Amazon Web Services resource, and provides the type and ID of the evaluated resource.
  _i2.EvaluationResultQualifier? get evaluationResultQualifier;

  /// The time of the event that triggered the evaluation of your Amazon Web Services resources. The time can indicate when Config delivered a configuration item change notification, or it can indicate when Config delivered the configuration snapshot, depending on which event triggered the evaluation.
  DateTime? get orderingTimestamp;

  /// A Unique ID for an evaluation result.
  String? get resourceEvaluationId;
  @override
  List<Object?> get props => [
        evaluationResultQualifier,
        orderingTimestamp,
        resourceEvaluationId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationResultIdentifier')
      ..add(
        'evaluationResultQualifier',
        evaluationResultQualifier,
      )
      ..add(
        'orderingTimestamp',
        orderingTimestamp,
      )
      ..add(
        'resourceEvaluationId',
        resourceEvaluationId,
      );
    return helper.toString();
  }
}

class EvaluationResultIdentifierAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<EvaluationResultIdentifier> {
  const EvaluationResultIdentifierAwsJson11Serializer()
      : super('EvaluationResultIdentifier');

  @override
  Iterable<Type> get types => const [
        EvaluationResultIdentifier,
        _$EvaluationResultIdentifier,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  EvaluationResultIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationResultIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EvaluationResultQualifier':
          result.evaluationResultQualifier.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.EvaluationResultQualifier),
          ) as _i2.EvaluationResultQualifier));
        case 'OrderingTimestamp':
          result.orderingTimestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ResourceEvaluationId':
          result.resourceEvaluationId = (serializers.deserialize(
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
    EvaluationResultIdentifier object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EvaluationResultIdentifier(
      :evaluationResultQualifier,
      :orderingTimestamp,
      :resourceEvaluationId
    ) = object;
    if (evaluationResultQualifier != null) {
      result$
        ..add('EvaluationResultQualifier')
        ..add(serializers.serialize(
          evaluationResultQualifier,
          specifiedType: const FullType(_i2.EvaluationResultQualifier),
        ));
    }
    if (orderingTimestamp != null) {
      result$
        ..add('OrderingTimestamp')
        ..add(serializers.serialize(
          orderingTimestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (resourceEvaluationId != null) {
      result$
        ..add('ResourceEvaluationId')
        ..add(serializers.serialize(
          resourceEvaluationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
