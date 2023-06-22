// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_compliance_by_config_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_by_config_rule.dart'
    as _i2;

part 'describe_compliance_by_config_rule_response.g.dart';

abstract class DescribeComplianceByConfigRuleResponse
    with
        _i1.AWSEquatable<DescribeComplianceByConfigRuleResponse>
    implements
        Built<DescribeComplianceByConfigRuleResponse,
            DescribeComplianceByConfigRuleResponseBuilder> {
  factory DescribeComplianceByConfigRuleResponse({
    List<_i2.ComplianceByConfigRule>? complianceByConfigRules,
    String? nextToken,
  }) {
    return _$DescribeComplianceByConfigRuleResponse._(
      complianceByConfigRules: complianceByConfigRules == null
          ? null
          : _i3.BuiltList(complianceByConfigRules),
      nextToken: nextToken,
    );
  }

  factory DescribeComplianceByConfigRuleResponse.build(
      [void Function(DescribeComplianceByConfigRuleResponseBuilder)
          updates]) = _$DescribeComplianceByConfigRuleResponse;

  const DescribeComplianceByConfigRuleResponse._();

  /// Constructs a [DescribeComplianceByConfigRuleResponse] from a [payload] and [response].
  factory DescribeComplianceByConfigRuleResponse.fromResponse(
    DescribeComplianceByConfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeComplianceByConfigRuleResponse>>
      serializers = [
    DescribeComplianceByConfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByConfigRuleResponseBuilder b) {}

  /// Indicates whether each of the specified Config rules is compliant.
  _i3.BuiltList<_i2.ComplianceByConfigRule>? get complianceByConfigRules;

  /// The string that you use in a subsequent request to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        complianceByConfigRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByConfigRuleResponse')
          ..add(
            'complianceByConfigRules',
            complianceByConfigRules,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeComplianceByConfigRuleResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeComplianceByConfigRuleResponse> {
  const DescribeComplianceByConfigRuleResponseAwsJson11Serializer()
      : super('DescribeComplianceByConfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByConfigRuleResponse,
        _$DescribeComplianceByConfigRuleResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByConfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByConfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ComplianceByConfigRules':
          result.complianceByConfigRules.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ComplianceByConfigRule)],
            ),
          ) as _i3.BuiltList<_i2.ComplianceByConfigRule>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeComplianceByConfigRuleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeComplianceByConfigRuleResponse(
      :complianceByConfigRules,
      :nextToken
    ) = object;
    if (complianceByConfigRules != null) {
      result$
        ..add('ComplianceByConfigRules')
        ..add(serializers.serialize(
          complianceByConfigRules,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ComplianceByConfigRule)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
