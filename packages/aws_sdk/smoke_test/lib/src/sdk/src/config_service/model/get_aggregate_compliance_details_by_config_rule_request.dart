// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    required String accountId,
    required String awsRegion,
    _i3.ComplianceType? complianceType,
    required String configRuleName,
    required String configurationAggregatorName,
    int? limit,
    String? nextToken,
  }) {
    return _$GetAggregateComplianceDetailsByConfigRuleRequest._(
      accountId: accountId,
      awsRegion: awsRegion,
      complianceType: complianceType,
      configRuleName: configRuleName,
      configurationAggregatorName: configurationAggregatorName,
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

  static const List<_i1.SmithySerializer> serializers = [
    GetAggregateComplianceDetailsByConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetAggregateComplianceDetailsByConfigRuleRequestBuilder b) {}

  /// The 12-digit account ID of the source account.
  String get accountId;

  /// The source region from where the data is aggregated.
  String get awsRegion;

  /// The resource compliance status.
  ///
  /// For the `GetAggregateComplianceDetailsByConfigRuleRequest` data type, Config supports only the `COMPLIANT` and `NON_COMPLIANT`. Config does not support the `NOT_APPLICABLE` and `INSUFFICIENT_DATA` values.
  _i3.ComplianceType? get complianceType;

  /// The name of the Config rule for which you want compliance information.
  String get configRuleName;

  /// The name of the configuration aggregator.
  String get configurationAggregatorName;

  /// The maximum number of evaluation results returned on each page. The default is 50. You cannot specify a number greater than 100. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetAggregateComplianceDetailsByConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        accountId,
        awsRegion,
        complianceType,
        configRuleName,
        configurationAggregatorName,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetAggregateComplianceDetailsByConfigRuleRequest');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'complianceType',
      complianceType,
    );
    helper.add(
      'configRuleName',
      configRuleName,
    );
    helper.add(
      'configurationAggregatorName',
      configurationAggregatorName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
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
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AwsRegion':
          result.awsRegion = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ComplianceType':
          if (value != null) {
            result.complianceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ComplianceType),
            ) as _i3.ComplianceType);
          }
          break;
        case 'ConfigRuleName':
          result.configRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConfigurationAggregatorName':
          result.configurationAggregatorName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        (object as GetAggregateComplianceDetailsByConfigRuleRequest);
    final result = <Object?>[
      'AccountId',
      serializers.serialize(
        payload.accountId,
        specifiedType: const FullType(String),
      ),
      'AwsRegion',
      serializers.serialize(
        payload.awsRegion,
        specifiedType: const FullType(String),
      ),
      'ConfigRuleName',
      serializers.serialize(
        payload.configRuleName,
        specifiedType: const FullType(String),
      ),
      'ConfigurationAggregatorName',
      serializers.serialize(
        payload.configurationAggregatorName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.complianceType != null) {
      result
        ..add('ComplianceType')
        ..add(serializers.serialize(
          payload.complianceType!,
          specifiedType: const FullType(_i3.ComplianceType),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
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
