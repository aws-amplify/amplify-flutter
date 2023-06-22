// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String organizationConfigRuleName,
    _i3.StatusDetailFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetOrganizationConfigRuleDetailedStatusRequest._(
      organizationConfigRuleName: organizationConfigRuleName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
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

  static const List<
          _i1.SmithySerializer<GetOrganizationConfigRuleDetailedStatusRequest>>
      serializers = [
    GetOrganizationConfigRuleDetailedStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationConfigRuleDetailedStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of your organization Config rule for which you want status details for member accounts.
  String get organizationConfigRuleName;

  /// A `StatusDetailFilters` object.
  _i3.StatusDetailFilters? get filters;

  /// The maximum number of `OrganizationConfigRuleDetailedStatus` returned on each page. If you do not specify a number, Config uses the default. The default is 100.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetOrganizationConfigRuleDetailedStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        organizationConfigRuleName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConfigRuleDetailedStatusRequest')
      ..add(
        'organizationConfigRuleName',
        organizationConfigRuleName,
      )
      ..add(
        'filters',
        filters,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StatusDetailFilters),
          ) as _i3.StatusDetailFilters));
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
    GetOrganizationConfigRuleDetailedStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetOrganizationConfigRuleDetailedStatusRequest(
      :organizationConfigRuleName,
      :filters,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'OrganizationConfigRuleName',
      serializers.serialize(
        organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (filters != null) {
      result$
        ..add('Filters')
        ..add(serializers.serialize(
          filters,
          specifiedType: const FullType(_i3.StatusDetailFilters),
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
