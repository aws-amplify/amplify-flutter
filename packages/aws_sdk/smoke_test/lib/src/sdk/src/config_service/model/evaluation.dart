// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.evaluation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;

part 'evaluation.g.dart';

/// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
abstract class Evaluation
    with _i1.AWSEquatable<Evaluation>
    implements Built<Evaluation, EvaluationBuilder> {
  /// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
  factory Evaluation({
    String? annotation,
    required String complianceResourceId,
    required String complianceResourceType,
    required _i2.ComplianceType complianceType,
    required DateTime orderingTimestamp,
  }) {
    return _$Evaluation._(
      annotation: annotation,
      complianceResourceId: complianceResourceId,
      complianceResourceType: complianceResourceType,
      complianceType: complianceType,
      orderingTimestamp: orderingTimestamp,
    );
  }

  /// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
  factory Evaluation.build([void Function(EvaluationBuilder) updates]) =
      _$Evaluation;

  const Evaluation._();

  static const List<_i3.SmithySerializer> serializers = [
    EvaluationAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EvaluationBuilder b) {}

  /// Supplementary information about how the evaluation determined the compliance.
  String? get annotation;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String get complianceResourceId;

  /// The type of Amazon Web Services resource that was evaluated.
  String get complianceResourceType;

  /// Indicates whether the Amazon Web Services resource complies with the Config rule that it was evaluated against.
  ///
  /// For the `Evaluation` data type, Config supports only the `COMPLIANT`, `NON_COMPLIANT`, and `NOT_APPLICABLE` values. Config does not support the `INSUFFICIENT_DATA` value for this data type.
  ///
  /// Similarly, Config does not accept `INSUFFICIENT_DATA` as the value for `ComplianceType` from a `PutEvaluations` request. For example, an Lambda function for a custom Config rule cannot pass an `INSUFFICIENT_DATA` value to Config.
  _i2.ComplianceType get complianceType;

  /// The time of the event in Config that triggered the evaluation. For event-based evaluations, the time indicates when Config created the configuration item that triggered the evaluation. For periodic evaluations, the time indicates when Config triggered the evaluation at the frequency that you specified (for example, every 24 hours).
  DateTime get orderingTimestamp;
  @override
  List<Object?> get props => [
        annotation,
        complianceResourceId,
        complianceResourceType,
        complianceType,
        orderingTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Evaluation');
    helper.add(
      'annotation',
      annotation,
    );
    helper.add(
      'complianceResourceId',
      complianceResourceId,
    );
    helper.add(
      'complianceResourceType',
      complianceResourceType,
    );
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'orderingTimestamp',
      orderingTimestamp,
    );
    return helper.toString();
  }
}

class EvaluationAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<Evaluation> {
  const EvaluationAwsJson11Serializer() : super('Evaluation');

  @override
  Iterable<Type> get types => const [
        Evaluation,
        _$Evaluation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Evaluation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EvaluationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Annotation':
          if (value != null) {
            result.annotation = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ComplianceResourceId':
          result.complianceResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ComplianceResourceType':
          result.complianceResourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ComplianceType),
          ) as _i2.ComplianceType);
          break;
        case 'OrderingTimestamp':
          result.orderingTimestamp = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    final payload = (object as Evaluation);
    final result = <Object?>[
      'ComplianceResourceId',
      serializers.serialize(
        payload.complianceResourceId,
        specifiedType: const FullType(String),
      ),
      'ComplianceResourceType',
      serializers.serialize(
        payload.complianceResourceType,
        specifiedType: const FullType(String),
      ),
      'ComplianceType',
      serializers.serialize(
        payload.complianceType,
        specifiedType: const FullType(_i2.ComplianceType),
      ),
      'OrderingTimestamp',
      serializers.serialize(
        payload.orderingTimestamp,
        specifiedType: const FullType(DateTime),
      ),
    ];
    if (payload.annotation != null) {
      result
        ..add('Annotation')
        ..add(serializers.serialize(
          payload.annotation!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
