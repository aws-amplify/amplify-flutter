// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_aggregate_compliance_by_config_rules_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregate_compliance_by_config_rule.dart'
    as _i2;

part 'describe_aggregate_compliance_by_config_rules_response.g.dart';

abstract class DescribeAggregateComplianceByConfigRulesResponse
    with
        _i1.AWSEquatable<DescribeAggregateComplianceByConfigRulesResponse>
    implements
        Built<DescribeAggregateComplianceByConfigRulesResponse,
            DescribeAggregateComplianceByConfigRulesResponseBuilder> {
  factory DescribeAggregateComplianceByConfigRulesResponse({
    List<_i2.AggregateComplianceByConfigRule>? aggregateComplianceByConfigRules,
    String? nextToken,
  }) {
    return _$DescribeAggregateComplianceByConfigRulesResponse._(
      aggregateComplianceByConfigRules: aggregateComplianceByConfigRules == null
          ? null
          : _i3.BuiltList(aggregateComplianceByConfigRules),
      nextToken: nextToken,
    );
  }

  factory DescribeAggregateComplianceByConfigRulesResponse.build(
      [void Function(DescribeAggregateComplianceByConfigRulesResponseBuilder)
          updates]) = _$DescribeAggregateComplianceByConfigRulesResponse;

  const DescribeAggregateComplianceByConfigRulesResponse._();

  /// Constructs a [DescribeAggregateComplianceByConfigRulesResponse] from a [payload] and [response].
  factory DescribeAggregateComplianceByConfigRulesResponse.fromResponse(
    DescribeAggregateComplianceByConfigRulesResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregateComplianceByConfigRulesResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeAggregateComplianceByConfigRulesResponseBuilder b) {}

  /// Returns a list of AggregateComplianceByConfigRule object.
  _i3.BuiltList<_i2.AggregateComplianceByConfigRule>?
      get aggregateComplianceByConfigRules;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregateComplianceByConfigRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregateComplianceByConfigRulesResponse');
    helper.add(
      'aggregateComplianceByConfigRules',
      aggregateComplianceByConfigRules,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregateComplianceByConfigRulesResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        DescribeAggregateComplianceByConfigRulesResponse> {
  const DescribeAggregateComplianceByConfigRulesResponseAwsJson11Serializer()
      : super('DescribeAggregateComplianceByConfigRulesResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateComplianceByConfigRulesResponse,
        _$DescribeAggregateComplianceByConfigRulesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregateComplianceByConfigRulesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateComplianceByConfigRulesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregateComplianceByConfigRules':
          if (value != null) {
            result.aggregateComplianceByConfigRules
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregateComplianceByConfigRule)],
              ),
            ) as _i3.BuiltList<_i2.AggregateComplianceByConfigRule>));
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
    final payload =
        (object as DescribeAggregateComplianceByConfigRulesResponse);
    final result = <Object?>[];
    if (payload.aggregateComplianceByConfigRules != null) {
      result
        ..add('AggregateComplianceByConfigRules')
        ..add(serializers.serialize(
          payload.aggregateComplianceByConfigRules!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregateComplianceByConfigRule)],
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
