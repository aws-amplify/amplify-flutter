// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.describe_conformance_pack_compliance_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_rule_compliance.dart'
    as _i2;

part 'describe_conformance_pack_compliance_response.g.dart';

abstract class DescribeConformancePackComplianceResponse
    with
        _i1.AWSEquatable<DescribeConformancePackComplianceResponse>
    implements
        Built<DescribeConformancePackComplianceResponse,
            DescribeConformancePackComplianceResponseBuilder> {
  factory DescribeConformancePackComplianceResponse({
    required String conformancePackName,
    required List<_i2.ConformancePackRuleCompliance>
        conformancePackRuleComplianceList,
    String? nextToken,
  }) {
    return _$DescribeConformancePackComplianceResponse._(
      conformancePackName: conformancePackName,
      conformancePackRuleComplianceList:
          _i3.BuiltList(conformancePackRuleComplianceList),
      nextToken: nextToken,
    );
  }

  factory DescribeConformancePackComplianceResponse.build(
      [void Function(DescribeConformancePackComplianceResponseBuilder)
          updates]) = _$DescribeConformancePackComplianceResponse;

  const DescribeConformancePackComplianceResponse._();

  /// Constructs a [DescribeConformancePackComplianceResponse] from a [payload] and [response].
  factory DescribeConformancePackComplianceResponse.fromResponse(
    DescribeConformancePackComplianceResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i4.SmithySerializer<DescribeConformancePackComplianceResponse>>
      serializers = [
    DescribeConformancePackComplianceResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConformancePackComplianceResponseBuilder b) {}

  /// Name of the conformance pack.
  String get conformancePackName;

  /// Returns a list of `ConformancePackRuleCompliance` objects.
  _i3.BuiltList<_i2.ConformancePackRuleCompliance>
      get conformancePackRuleComplianceList;

  /// The `nextToken` string returned in a previous request that you use to request the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        conformancePackName,
        conformancePackRuleComplianceList,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeConformancePackComplianceResponse')
          ..add(
            'conformancePackName',
            conformancePackName,
          )
          ..add(
            'conformancePackRuleComplianceList',
            conformancePackRuleComplianceList,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeConformancePackComplianceResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeConformancePackComplianceResponse> {
  const DescribeConformancePackComplianceResponseAwsJson11Serializer()
      : super('DescribeConformancePackComplianceResponse');

  @override
  Iterable<Type> get types => const [
        DescribeConformancePackComplianceResponse,
        _$DescribeConformancePackComplianceResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeConformancePackComplianceResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConformancePackComplianceResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackRuleComplianceList':
          result.conformancePackRuleComplianceList
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConformancePackRuleCompliance)],
            ),
          ) as _i3.BuiltList<_i2.ConformancePackRuleCompliance>));
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
    DescribeConformancePackComplianceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeConformancePackComplianceResponse(
      :conformancePackName,
      :conformancePackRuleComplianceList,
      :nextToken
    ) = object;
    result$.addAll([
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
      'ConformancePackRuleComplianceList',
      serializers.serialize(
        conformancePackRuleComplianceList,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.ConformancePackRuleCompliance)],
        ),
      ),
    ]);
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
