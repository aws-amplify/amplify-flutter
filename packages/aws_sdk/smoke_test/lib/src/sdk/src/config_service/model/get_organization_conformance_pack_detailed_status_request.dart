// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_organization_conformance_pack_detailed_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status_filters.dart'
    as _i3;

part 'get_organization_conformance_pack_detailed_status_request.g.dart';

abstract class GetOrganizationConformancePackDetailedStatusRequest
    with
        _i1.HttpInput<GetOrganizationConformancePackDetailedStatusRequest>,
        _i2.AWSEquatable<GetOrganizationConformancePackDetailedStatusRequest>
    implements
        Built<GetOrganizationConformancePackDetailedStatusRequest,
            GetOrganizationConformancePackDetailedStatusRequestBuilder> {
  factory GetOrganizationConformancePackDetailedStatusRequest({
    required String organizationConformancePackName,
    _i3.OrganizationResourceDetailedStatusFilters? filters,
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$GetOrganizationConformancePackDetailedStatusRequest._(
      organizationConformancePackName: organizationConformancePackName,
      filters: filters,
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory GetOrganizationConformancePackDetailedStatusRequest.build(
      [void Function(GetOrganizationConformancePackDetailedStatusRequestBuilder)
          updates]) = _$GetOrganizationConformancePackDetailedStatusRequest;

  const GetOrganizationConformancePackDetailedStatusRequest._();

  factory GetOrganizationConformancePackDetailedStatusRequest.fromRequest(
    GetOrganizationConformancePackDetailedStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          GetOrganizationConformancePackDetailedStatusRequest>> serializers = [
    GetOrganizationConformancePackDetailedStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetOrganizationConformancePackDetailedStatusRequestBuilder b) {
    b.limit = 0;
  }

  /// The name of organization conformance pack for which you want status details for member accounts.
  String get organizationConformancePackName;

  /// An `OrganizationResourceDetailedStatusFilters` object.
  _i3.OrganizationResourceDetailedStatusFilters? get filters;

  /// The maximum number of `OrganizationConformancePackDetailedStatuses` returned on each page. If you do not specify a number, Config uses the default. The default is 100.
  int get limit;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  GetOrganizationConformancePackDetailedStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        organizationConformancePackName,
        filters,
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConformancePackDetailedStatusRequest')
      ..add(
        'organizationConformancePackName',
        organizationConformancePackName,
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

class GetOrganizationConformancePackDetailedStatusRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<
        GetOrganizationConformancePackDetailedStatusRequest> {
  const GetOrganizationConformancePackDetailedStatusRequestAwsJson11Serializer()
      : super('GetOrganizationConformancePackDetailedStatusRequest');

  @override
  Iterable<Type> get types => const [
        GetOrganizationConformancePackDetailedStatusRequest,
        _$GetOrganizationConformancePackDetailedStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationConformancePackDetailedStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationConformancePackDetailedStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filters':
          result.filters.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.OrganizationResourceDetailedStatusFilters),
          ) as _i3.OrganizationResourceDetailedStatusFilters));
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
    GetOrganizationConformancePackDetailedStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetOrganizationConformancePackDetailedStatusRequest(
      :organizationConformancePackName,
      :filters,
      :limit,
      :nextToken
    ) = object;
    result$.addAll([
      'OrganizationConformancePackName',
      serializers.serialize(
        organizationConformancePackName,
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
          specifiedType:
              const FullType(_i3.OrganizationResourceDetailedStatusFilters),
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
