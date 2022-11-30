// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
  }) {
    return _$EvaluationResultIdentifier._(
      evaluationResultQualifier: evaluationResultQualifier,
      orderingTimestamp: orderingTimestamp,
    );
  }

  /// Uniquely identifies an evaluation result.
  factory EvaluationResultIdentifier.build(
          [void Function(EvaluationResultIdentifierBuilder) updates]) =
      _$EvaluationResultIdentifier;

  const EvaluationResultIdentifier._();

  static const List<_i3.SmithySerializer> serializers = [
    EvaluationResultIdentifierAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationResultIdentifierBuilder b) {}

  /// Identifies an Config rule used to evaluate an Amazon Web Services resource, and provides the type and ID of the evaluated resource.
  _i2.EvaluationResultQualifier? get evaluationResultQualifier;

  /// The time of the event that triggered the evaluation of your Amazon Web Services resources. The time can indicate when Config delivered a configuration item change notification, or it can indicate when Config delivered the configuration snapshot, depending on which event triggered the evaluation.
  DateTime? get orderingTimestamp;
  @override
  List<Object?> get props => [
        evaluationResultQualifier,
        orderingTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EvaluationResultIdentifier');
    helper.add(
      'evaluationResultQualifier',
      evaluationResultQualifier,
    );
    helper.add(
      'orderingTimestamp',
      orderingTimestamp,
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
      switch (key) {
        case 'EvaluationResultQualifier':
          if (value != null) {
            result.evaluationResultQualifier.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EvaluationResultQualifier),
            ) as _i2.EvaluationResultQualifier));
          }
          break;
        case 'OrderingTimestamp':
          if (value != null) {
            result.orderingTimestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as EvaluationResultIdentifier);
    final result = <Object?>[];
    if (payload.evaluationResultQualifier != null) {
      result
        ..add('EvaluationResultQualifier')
        ..add(serializers.serialize(
          payload.evaluationResultQualifier!,
          specifiedType: const FullType(_i2.EvaluationResultQualifier),
        ));
    }
    if (payload.orderingTimestamp != null) {
      result
        ..add('OrderingTimestamp')
        ..add(serializers.serialize(
          payload.orderingTimestamp!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
