// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    List<_i3.ComplianceType>? complianceTypes,
    List<String>? configRuleNames,
    String? nextToken,
  }) {
    return _$DescribeComplianceByConfigRuleRequest._(
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      configRuleNames:
          configRuleNames == null ? null : _i4.BuiltList(configRuleNames),
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

  static const List<_i1.SmithySerializer> serializers = [
    DescribeComplianceByConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeComplianceByConfigRuleRequestBuilder b) {}

  /// Filters the results by compliance.
  ///
  /// The allowed values are `COMPLIANT` and `NON_COMPLIANT`.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// Specify one or more Config rule names to filter the results by rule.
  _i4.BuiltList<String>? get configRuleNames;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeComplianceByConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        complianceTypes,
        configRuleNames,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeComplianceByConfigRuleRequest');
    helper.add(
      'complianceTypes',
      complianceTypes,
    );
    helper.add(
      'configRuleNames',
      configRuleNames,
    );
    helper.add(
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
      switch (key) {
        case 'ComplianceTypes':
          if (value != null) {
            result.complianceTypes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ComplianceType)],
              ),
            ) as _i4.BuiltList<_i3.ComplianceType>));
          }
          break;
        case 'ConfigRuleNames':
          if (value != null) {
            result.configRuleNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeComplianceByConfigRuleRequest);
    final result = <Object?>[];
    if (payload.complianceTypes != null) {
      result
        ..add('ComplianceTypes')
        ..add(serializers.serialize(
          payload.complianceTypes!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.ComplianceType)],
          ),
        ));
    }
    if (payload.configRuleNames != null) {
      result
        ..add('ConfigRuleNames')
        ..add(serializers.serialize(
          payload.configRuleNames!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
