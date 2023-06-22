// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_compliance_details_by_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'get_compliance_details_by_config_rule_request.g.dart';

abstract class GetComplianceDetailsByConfigRuleRequest
    with
        _i1.HttpInput<GetComplianceDetailsByConfigRuleRequest>,
        _i2.AWSEquatable<GetComplianceDetailsByConfigRuleRequest>
    implements
        Built<GetComplianceDetailsByConfigRuleRequest,
            GetComplianceDetailsByConfigRuleRequestBuilder> {
  factory GetComplianceDetailsByConfigRuleRequest({
    required String configRuleName,
    List<_i3.ComplianceType>? complianceTypes,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetComplianceDetailsByConfigRuleRequest._(
      configRuleName: configRuleName,
      complianceTypes:
          complianceTypes == null ? null : _i4.BuiltList(complianceTypes),
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetComplianceDetailsByConfigRuleRequest.build(
      [void Function(GetComplianceDetailsByConfigRuleRequestBuilder)
          updates]) = _$GetComplianceDetailsByConfigRuleRequest;

  const GetComplianceDetailsByConfigRuleRequest._();

  factory GetComplianceDetailsByConfigRuleRequest.fromRequest(
    GetComplianceDetailsByConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetComplianceDetailsByConfigRuleRequest>>
      serializers = [
    GetComplianceDetailsByConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetComplianceDetailsByConfigRuleRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the Config rule for which you want compliance information.
  String get configRuleName;

  /// Filters the results by compliance.
  ///
  /// `INSUFFICIENT_DATA` is a valid `ComplianceType` that is returned when an Config rule cannot be evaluated. However, `INSUFFICIENT_DATA` cannot be used as a `ComplianceType` for filtering results.
  _i4.BuiltList<_i3.ComplianceType>? get complianceTypes;

  /// The maximum number of evaluation results returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetComplianceDetailsByConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configRuleName,
        complianceTypes,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetComplianceDetailsByConfigRuleRequest')
          ..add(
            'configRuleName',
            configRuleName,
          )
          ..add(
            'complianceTypes',
            complianceTypes,
          )
          ..add(
            'limit',
            limit,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetComplianceDetailsByConfigRuleRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetComplianceDetailsByConfigRuleRequest> {
  const GetComplianceDetailsByConfigRuleRequestAwsJson11Serializer()
      : super('GetComplianceDetailsByConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        GetComplianceDetailsByConfigRuleRequest,
        _$GetComplianceDetailsByConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetComplianceDetailsByConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetComplianceDetailsByConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceTypes':
          result.complianceTypes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ComplianceType)],
            ),
          ) as _i4.BuiltList<_i3.ComplianceType>));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    GetComplianceDetailsByConfigRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetComplianceDetailsByConfigRuleRequest(
      :configRuleName,
      :complianceTypes,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConfigRuleName',
      serializers.serialize(
        configRuleName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
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
