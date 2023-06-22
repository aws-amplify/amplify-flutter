// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_aggregate_compliance_details_by_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance_type.dart'
    as _i3;

part 'get_aggregate_compliance_details_by_config_rule_request.g.dart';

abstract class GetAggregateComplianceDetailsByConfigRuleRequest
    with
        _i1.HttpInput<GetAggregateComplianceDetailsByConfigRuleRequest>,
        _i2.AWSEquatable<GetAggregateComplianceDetailsByConfigRuleRequest>
    implements
        Built<GetAggregateComplianceDetailsByConfigRuleRequest,
            GetAggregateComplianceDetailsByConfigRuleRequestBuilder> {
  factory GetAggregateComplianceDetailsByConfigRuleRequest({
    required String configurationAggregatorName,
    required String configRuleName,
    required String accountId,
    required String awsRegion,
    _i3.ComplianceType? complianceType,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetAggregateComplianceDetailsByConfigRuleRequest._(
      configurationAggregatorName: configurationAggregatorName,
      configRuleName: configRuleName,
      accountId: accountId,
      awsRegion: awsRegion,
      complianceType: complianceType,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetAggregateComplianceDetailsByConfigRuleRequest.build(
      [void Function(GetAggregateComplianceDetailsByConfigRuleRequestBuilder)
          updates]) = _$GetAggregateComplianceDetailsByConfigRuleRequest;

  const GetAggregateComplianceDetailsByConfigRuleRequest._();

  factory GetAggregateComplianceDetailsByConfigRuleRequest.fromRequest(
    GetAggregateComplianceDetailsByConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          GetAggregateComplianceDetailsByConfigRuleRequest>> serializers = [
    GetAggregateComplianceDetailsByConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAggregateComplianceDetailsByConfigRuleRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// The name of the Config rule for which you want compliance information.
  String get configRuleName;

  /// The 12-digit account ID of the source account.
  String get accountId;

  /// The source region from where the data is aggregated.
  String get awsRegion;

  /// The resource compliance status.
  ///
  /// For the `GetAggregateComplianceDetailsByConfigRuleRequest` data type, Config supports only the `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` values.
  _i3.ComplianceType? get complianceType;

  /// The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetAggregateComplianceDetailsByConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        configurationAggregatorName,
        configRuleName,
        accountId,
        awsRegion,
        complianceType,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateComplianceDetailsByConfigRuleRequest')
      ..add(
        'configurationAggregatorName',
        configurationAggregatorName,
      )
      ..add(
        'configRuleName',
        configRuleName,
      )
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'awsRegion',
        awsRegion,
      )
      ..add(
        'complianceType',
        complianceType,
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

class GetAggregateComplianceDetailsByConfigRuleRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        GetAggregateComplianceDetailsByConfigRuleRequest> {
  const GetAggregateComplianceDetailsByConfigRuleRequestAwsJson11Serializer()
      : super('GetAggregateComplianceDetailsByConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        GetAggregateComplianceDetailsByConfigRuleRequest,
        _$GetAggregateComplianceDetailsByConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetAggregateComplianceDetailsByConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAggregateComplianceDetailsByConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ComplianceType':
          result.complianceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ComplianceType),
          ) as _i3.ComplianceType);
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
    GetAggregateComplianceDetailsByConfigRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetAggregateComplianceDetailsByConfigRuleRequest(
      :configurationAggregatorName,
      :configRuleName,
      :accountId,
      :awsRegion,
      :complianceType,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'ConfigurationAggregatorName',
      serializers.serialize(
        configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
      'ConfigRuleName',
      serializers.serialize(
        configRuleName,
        specifiedType: const FullType(String),
      ),
      'AccountId',
      serializers.serialize(
        accountId,
        specifiedType: const FullType(String),
      ),
      'AwsRegion',
      serializers.serialize(
        awsRegion,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (complianceType != null) {
      result$
        ..add('ComplianceType')
        ..add(serializers.serialize(
          complianceType,
          specifiedType: const FullType(_i3.ComplianceType),
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
