// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_config_rules_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/evaluation_mode.dart'
    as _i2;

part 'describe_config_rules_filters.g.dart';

/// Returns a filtered list of Detective or Proactive Config rules. By default, if the filter is not defined, this API returns an unfiltered list. For more information on Detective or Proactive Config rules, see [**Evaluation Mode**](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html) in the _Config Developer Guide_.
abstract class DescribeConfigRulesFilters
    with _i1.AWSEquatable<DescribeConfigRulesFilters>
    implements
        Built<DescribeConfigRulesFilters, DescribeConfigRulesFiltersBuilder> {
  /// Returns a filtered list of Detective or Proactive Config rules. By default, if the filter is not defined, this API returns an unfiltered list. For more information on Detective or Proactive Config rules, see [**Evaluation Mode**](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html) in the _Config Developer Guide_.
  factory DescribeConfigRulesFilters({_i2.EvaluationMode? evaluationMode}) {
    return _$DescribeConfigRulesFilters._(evaluationMode: evaluationMode);
  }

  /// Returns a filtered list of Detective or Proactive Config rules. By default, if the filter is not defined, this API returns an unfiltered list. For more information on Detective or Proactive Config rules, see [**Evaluation Mode**](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config-rules.html) in the _Config Developer Guide_.
  factory DescribeConfigRulesFilters.build(
          [void Function(DescribeConfigRulesFiltersBuilder) updates]) =
      _$DescribeConfigRulesFilters;

  const DescribeConfigRulesFilters._();

  static const List<_i3.SmithySerializer<DescribeConfigRulesFilters>>
      serializers = [DescribeConfigRulesFiltersAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConfigRulesFiltersBuilder b) {}

  /// The mode of an evaluation. The valid values are Detective or Proactive.
  _i2.EvaluationMode? get evaluationMode;
  @override
  List<Object?> get props => [evaluationMode];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConfigRulesFilters')
      ..add(
        'evaluationMode',
        evaluationMode,
      );
    return helper.toString();
  }
}

class DescribeConfigRulesFiltersAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<DescribeConfigRulesFilters> {
  const DescribeConfigRulesFiltersAwsJson11Serializer()
      : super('DescribeConfigRulesFilters');

  @override
  Iterable<Type> get types => const [
        DescribeConfigRulesFilters,
        _$DescribeConfigRulesFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConfigRulesFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConfigRulesFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    DescribeConfigRulesFilters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConfigRulesFilters(:evaluationMode) = object;
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
