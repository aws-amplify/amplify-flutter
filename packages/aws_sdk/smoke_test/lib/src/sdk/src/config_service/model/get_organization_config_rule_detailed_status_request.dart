// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.get_organization_config_rule_detailed_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/status_detail_filters.dart'
    as _i3;

part 'get_organization_config_rule_detailed_status_request.g.dart';

abstract class GetOrganizationConfigRuleDetailedStatusRequest
    with
        _i1.HttpInput<GetOrganizationConfigRuleDetailedStatusRequest>,
        _i2.AWSEquatable<GetOrganizationConfigRuleDetailedStatusRequest>
    implements
        Built<GetOrganizationConfigRuleDetailedStatusRequest,
            GetOrganizationConfigRuleDetailedStatusRequestBuilder> {
  factory GetOrganizationConfigRuleDetailedStatusRequest({
    _i3.StatusDetailFilters? filters,
    int? limit,
    String? nextToken,
    required String organizationConfigRuleName,
  }) {
    return _$GetOrganizationConfigRuleDetailedStatusRequest._(
      filters: filters,
      limit: limit,
      nextToken: nextToken,
      organizationConfigRuleName: organizationConfigRuleName,
    );
  }

  factory GetOrganizationConfigRuleDetailedStatusRequest.build(
      [void Function(GetOrganizationConfigRuleDetailedStatusRequestBuilder)
          updates]) = _$GetOrganizationConfigRuleDetailedStatusRequest;

  const GetOrganizationConfigRuleDetailedStatusRequest._();

  factory GetOrganizationConfigRuleDetailedStatusRequest.fromRequest(
    GetOrganizationConfigRuleDetailedStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetOrganizationConfigRuleDetailedStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationConfigRuleDetailedStatusRequestBuilder b) {}

  /// A `StatusDetailFilters` object.
  _i3.StatusDetailFilters? get filters;

  /// The maximum number of `OrganizationConfigRuleDetailedStatus` returned on each page. If you do not specify a number, Config uses the default. The default is 100.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The name of your organization Config rule for which you want status details for member accounts.
  String get organizationConfigRuleName;
  @override
  GetOrganizationConfigRuleDetailedStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        limit,
        nextToken,
        organizationConfigRuleName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConfigRuleDetailedStatusRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'organizationConfigRuleName',
      organizationConfigRuleName,
    );
    return helper.toString();
  }
}

class GetOrganizationConfigRuleDetailedStatusRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        GetOrganizationConfigRuleDetailedStatusRequest> {
  const GetOrganizationConfigRuleDetailedStatusRequestAwsJson11Serializer()
      : super('GetOrganizationConfigRuleDetailedStatusRequest');

  @override
  Iterable<Type> get types => const [
        GetOrganizationConfigRuleDetailedStatusRequest,
        _$GetOrganizationConfigRuleDetailedStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationConfigRuleDetailedStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationConfigRuleDetailedStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StatusDetailFilters),
            ) as _i3.StatusDetailFilters));
          }
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
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as GetOrganizationConfigRuleDetailedStatusRequest);
    final result = <Object?>[
      'OrganizationConfigRuleName',
      serializers.serialize(
        payload.organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType: const FullType(_i3.StatusDetailFilters),
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
