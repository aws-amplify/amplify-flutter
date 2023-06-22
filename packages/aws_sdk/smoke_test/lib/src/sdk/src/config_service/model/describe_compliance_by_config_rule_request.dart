// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_compliance_by_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'describe_compliance_by_config_rule_request.g.dart';

abstract class DescribeComplianceByConfigRuleRequest
    with
        _i1.HttpInput<DescribeComplianceByConfigRuleRequest>,
        _i2.AWSEquatable<DescribeComplianceByConfigRuleRequest>
    implements
        Built<DescribeComplianceByConfigRuleRequest,
            DescribeComplianceByConfigRuleRequestBuilder> {
  factory DescribeComplianceByConfigRuleRequest({
    List<String>? configRuleNames,
    List<_i3.ComplianceType>? complianceTypes,
    String? nextToken,
  }) {
    return _$DescribeComplianceByConfigRuleRequest._(
      configRuleNames:
          configRuleNames == null ? null : _i4.BuiltList(configRuleNames),
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      nextToken: nextToken,
    );
  }

  factory DescribeComplianceByConfigRuleRequest.build(
      [void Function(DescribeComplianceByConfigRuleRequestBuilder)
          updates]) = _$DescribeComplianceByConfigRuleRequest;

  const DescribeComplianceByConfigRuleRequest._();

  factory DescribeComplianceByConfigRuleRequest.fromRequest(
    DescribeComplianceByConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeComplianceByConfigRuleRequest>>
      serializers = [
    DescribeComplianceByConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByConfigRuleRequestBuilder b) {}

  /// Specify one or more Config rule names to filter the results by rule.
  _i4.BuiltList<String>? get configRuleNames;

  /// Filters the results by compliance.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeComplianceByConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleNames,
        complianceTypes,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByConfigRuleRequest')
          ..add(
            'configRuleNames',
            configRuleNames,
          )
          ..add(
            'complianceTypes',
            complianceTypes,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeComplianceByConfigRuleRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeComplianceByConfigRuleRequest> {
  const DescribeComplianceByConfigRuleRequestAwsJson11Serializer()
      : super('DescribeComplianceByConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        DescribeComplianceByConfigRuleRequest,
        _$DescribeComplianceByConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeComplianceByConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeComplianceByConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleNames':
          result.configRuleNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ComplianceTypes':
          result.complianceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ComplianceType)],
            ),
          ) as _i4.BuiltList<_i3.ComplianceType>));
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
    DescribeComplianceByConfigRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeComplianceByConfigRuleRequest(
      :configRuleNames,
      :complianceTypes,
      :nextToken
    ) = object;
    if (configRuleNames != null) {
      result$
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          configRuleNames,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (complianceTypes != null) {
      result$
        ..add('ComplianceTypes')
        ..add(serializers.serialize(
          complianceTypes,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ComplianceType)],
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
