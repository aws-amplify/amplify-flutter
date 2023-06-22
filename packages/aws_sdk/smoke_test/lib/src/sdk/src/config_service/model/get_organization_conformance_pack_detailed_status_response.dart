// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_organization_conformance_pack_detailed_status_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_conformance_pack_detailed_status.dart'
    as _i2;

part 'get_organization_conformance_pack_detailed_status_response.g.dart';

abstract class GetOrganizationConformancePackDetailedStatusResponse
    with
        _i1.AWSEquatable<GetOrganizationConformancePackDetailedStatusResponse>
    implements
        Built<GetOrganizationConformancePackDetailedStatusResponse,
            GetOrganizationConformancePackDetailedStatusResponseBuilder> {
  factory GetOrganizationConformancePackDetailedStatusResponse({
    List<_i2.OrganizationConformancePackDetailedStatus>?
        organizationConformancePackDetailedStatuses,
    String? nextToken,
  }) {
    return _$GetOrganizationConformancePackDetailedStatusResponse._(
      organizationConformancePackDetailedStatuses:
          organizationConformancePackDetailedStatuses == null
              ? null
              : _i3.BuiltList(organizationConformancePackDetailedStatuses),
      nextToken: nextToken,
    );
  }

  factory GetOrganizationConformancePackDetailedStatusResponse.build(
      [void Function(
              GetOrganizationConformancePackDetailedStatusResponseBuilder)
          updates]) = _$GetOrganizationConformancePackDetailedStatusResponse;

  const GetOrganizationConformancePackDetailedStatusResponse._();

  /// Constructs a [GetOrganizationConformancePackDetailedStatusResponse] from a [payload] and [response].
  factory GetOrganizationConformancePackDetailedStatusResponse.fromResponse(
    GetOrganizationConformancePackDetailedStatusResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
      _i4.SmithySerializer<
          GetOrganizationConformancePackDetailedStatusResponse>> serializers = [
    GetOrganizationConformancePackDetailedStatusResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetOrganizationConformancePackDetailedStatusResponseBuilder b) {}

  /// A list of `OrganizationConformancePackDetailedStatus` objects.
  _i3.BuiltList<_i2.OrganizationConformancePackDetailedStatus>?
      get organizationConformancePackDetailedStatuses;

  /// The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        organizationConformancePackDetailedStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetOrganizationConformancePackDetailedStatusResponse')
      ..add(
        'organizationConformancePackDetailedStatuses',
        organizationConformancePackDetailedStatuses,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetOrganizationConformancePackDetailedStatusResponseAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<
        GetOrganizationConformancePackDetailedStatusResponse> {
  const GetOrganizationConformancePackDetailedStatusResponseAwsJson11Serializer()
      : super('GetOrganizationConformancePackDetailedStatusResponse');

  @override
  Iterable<Type> get types => const [
        GetOrganizationConformancePackDetailedStatusResponse,
        _$GetOrganizationConformancePackDetailedStatusResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationConformancePackDetailedStatusResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        GetOrganizationConformancePackDetailedStatusResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackDetailedStatuses':
          result.organizationConformancePackDetailedStatuses
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.OrganizationConformancePackDetailedStatus)],
            ),
          ) as _i3.BuiltList<_i2.OrganizationConformancePackDetailedStatus>));
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
    GetOrganizationConformancePackDetailedStatusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetOrganizationConformancePackDetailedStatusResponse(
      :organizationConformancePackDetailedStatuses,
      :nextToken
    ) = object;
    if (organizationConformancePackDetailedStatuses != null) {
      result$
        ..add('OrganizationConformancePackDetailedStatuses')
        ..add(serializers.serialize(
          organizationConformancePackDetailedStatuses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.OrganizationConformancePackDetailedStatus)],
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
