// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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
    _i3.OrganizationResourceDetailedStatusFilters? filters,
    int? limit,
    String? nextToken,
    required String organizationConformancePackName,
  }) {
    return _$GetOrganizationConformancePackDetailedStatusRequest._(
      filters: filters,
      limit: limit,
      nextToken: nextToken,
      organizationConformancePackName: organizationConformancePackName,
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

  static const List<_i1.SmithySerializer> serializers = [
    GetOrganizationConformancePackDetailedStatusRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetOrganizationConformancePackDetailedStatusRequestBuilder b) {}

  /// An `OrganizationResourceDetailedStatusFilters` object.
  _i3.OrganizationResourceDetailedStatusFilters? get filters;

  /// The maximum number of `OrganizationConformancePackDetailedStatuses` returned on each page. If you do not specify a number, Config uses the default. The default is 100.
  int? get limit;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// The name of organization conformance pack for which you want status details for member accounts.
  String get organizationConformancePackName;
  @override
  GetOrganizationConformancePackDetailedStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        limit,
        nextToken,
        organizationConformancePackName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConformancePackDetailedStatusRequest');
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
      'organizationConformancePackName',
      organizationConformancePackName,
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
      switch (key) {
        case 'Filters':
          if (value != null) {
            result.filters.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.OrganizationResourceDetailedStatusFilters),
            ) as _i3.OrganizationResourceDetailedStatusFilters));
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
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
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
    final payload =
        (object as GetOrganizationConformancePackDetailedStatusRequest);
    final result = <Object?>[
      'OrganizationConformancePackName',
      serializers.serialize(
        payload.organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.filters != null) {
      result
        ..add('Filters')
        ..add(serializers.serialize(
          payload.filters!,
          specifiedType:
              const FullType(_i3.OrganizationResourceDetailedStatusFilters),
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
