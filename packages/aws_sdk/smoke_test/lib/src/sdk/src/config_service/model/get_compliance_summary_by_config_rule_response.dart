// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_compliance_summary_by_config_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_summary.dart'
    as _i2;

part 'get_compliance_summary_by_config_rule_response.g.dart';

abstract class GetComplianceSummaryByConfigRuleResponse
    with
        _i1.AWSEquatable<GetComplianceSummaryByConfigRuleResponse>
    implements
        Built<GetComplianceSummaryByConfigRuleResponse,
            GetComplianceSummaryByConfigRuleResponseBuilder> {
  factory GetComplianceSummaryByConfigRuleResponse(
      {_i2.ComplianceSummary? complianceSummary}) {
    return _$GetComplianceSummaryByConfigRuleResponse._(
        complianceSummary: complianceSummary);
  }

  factory GetComplianceSummaryByConfigRuleResponse.build(
      [void Function(GetComplianceSummaryByConfigRuleResponseBuilder)
          updates]) = _$GetComplianceSummaryByConfigRuleResponse;

  const GetComplianceSummaryByConfigRuleResponse._();

  /// Constructs a [GetComplianceSummaryByConfigRuleResponse] from a [payload] and [response].
  factory GetComplianceSummaryByConfigRuleResponse.fromResponse(
    GetComplianceSummaryByConfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetComplianceSummaryByConfigRuleResponse>>
      serializers = [
    GetComplianceSummaryByConfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceSummaryByConfigRuleResponseBuilder b) {}

  /// The number of Config rules that are compliant and the number that are noncompliant, up to a maximum of 25 for each.
  _i2.ComplianceSummary? get complianceSummary;
  @override
  List<Object?> get props => [complianceSummary];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceSummaryByConfigRuleResponse')
          ..add(
            'complianceSummary',
            complianceSummary,
          );
    return helper.toString();
  }
}

class GetComplianceSummaryByConfigRuleResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<GetComplianceSummaryByConfigRuleResponse> {
  const GetComplianceSummaryByConfigRuleResponseAwsJson11Serializer()
      : super('GetComplianceSummaryByConfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        GetComplianceSummaryByConfigRuleResponse,
        _$GetComplianceSummaryByConfigRuleResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceSummaryByConfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceSummaryByConfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceSummary':
          result.complianceSummary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ComplianceSummary),
          ) as _i2.ComplianceSummary));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetComplianceSummaryByConfigRuleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetComplianceSummaryByConfigRuleResponse(:complianceSummary) = object;
    if (complianceSummary != null) {
      result$
        ..add('ComplianceSummary')
        ..add(serializers.serialize(
          complianceSummary,
          specifiedType: const FullType(_i2.ComplianceSummary),
        ));
    }
    return result$;
  }
}
