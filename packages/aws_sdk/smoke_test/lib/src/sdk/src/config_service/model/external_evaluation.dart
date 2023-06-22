// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.external_evaluation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i2;

part 'external_evaluation.g.dart';

/// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
abstract class ExternalEvaluation
    with _i1.AWSEquatable<ExternalEvaluation>
    implements Built<ExternalEvaluation, ExternalEvaluationBuilder> {
  /// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
  factory ExternalEvaluation({
    required String complianceResourceType,
    required String complianceResourceId,
    required _i2.ComplianceType complianceType,
    String? annotation,
    required DateTime orderingTimestamp,
  }) {
    return _$ExternalEvaluation._(
      complianceResourceType: complianceResourceType,
      complianceResourceId: complianceResourceId,
      complianceType: complianceType,
      annotation: annotation,
      orderingTimestamp: orderingTimestamp,
    );
  }

  /// Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.
  factory ExternalEvaluation.build(
          [void Function(ExternalEvaluationBuilder) updates]) =
      _$ExternalEvaluation;

  const ExternalEvaluation._();

  static const List<_i3.SmithySerializer<ExternalEvaluation>> serializers = [
    ExternalEvaluationAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExternalEvaluationBuilder b) {}

  /// The evaluated compliance resource type. Config accepts `AWS::::Account` resource type.
  String get complianceResourceType;

  /// The evaluated compliance resource ID. Config accepts only Amazon Web Services account ID.
  String get complianceResourceId;

  /// The compliance of the Amazon Web Services resource. The valid values are `COMPLIANT, NON_COMPLIANT,` and `NOT_APPLICABLE`.
  _i2.ComplianceType get complianceType;

  /// Supplementary information about the reason of compliance. For example, this task was completed on a specific date.
  String? get annotation;

  /// The time when the compliance was recorded.
  DateTime get orderingTimestamp;
  @override
  List<Object?> get props => [
        complianceResourceType,
        complianceResourceId,
        complianceType,
        annotation,
        orderingTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExternalEvaluation')
      ..add(
        'complianceResourceType',
        complianceResourceType,
      )
      ..add(
        'complianceResourceId',
        complianceResourceId,
      )
      ..add(
        'complianceType',
        complianceType,
      )
      ..add(
        'annotation',
        annotation,
      )
      ..add(
        'orderingTimestamp',
        orderingTimestamp,
      );
    return helper.toString();
  }
}

class ExternalEvaluationAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ExternalEvaluation> {
  const ExternalEvaluationAwsJson11Serializer() : super('ExternalEvaluation');

  @override
  Iterable<Type> get types => const [
        ExternalEvaluation,
        _$ExternalEvaluation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ExternalEvaluation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalEvaluationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceResourceType':
          result.complianceResourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceResourceId':
          result.complianceResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceType),
          ) as _i2.ComplianceType);
        case 'Annotation':
          result.annotation = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrderingTimestamp':
          result.orderingTimestamp = (serializers.deserialize(
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
    ExternalEvaluation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExternalEvaluation(
      :complianceResourceType,
      :complianceResourceId,
      :complianceType,
      :annotation,
      :orderingTimestamp
    ) = object;
    result$.addAll([
      'ComplianceResourceType',
      serializers.serialize(
        complianceResourceType,
        specifiedType: const FullType(String),
      ),
      'ComplianceResourceId',
      serializers.serialize(
        complianceResourceId,
        specifiedType: const FullType(String),
      ),
      'ComplianceType',
      serializers.serialize(
        complianceType,
        specifiedType: const FullType(_i2.ComplianceType),
      ),
      'OrderingTimestamp',
      serializers.serialize(
        orderingTimestamp,
        specifiedType: const FullType(DateTime),
      ),
    ]);
    if (annotation != null) {
      result$
        ..add('Annotation')
        ..add(serializers.serialize(
          annotation,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
