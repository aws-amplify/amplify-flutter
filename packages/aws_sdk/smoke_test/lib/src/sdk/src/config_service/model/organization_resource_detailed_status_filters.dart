// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_resource_detailed_status_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status.dart'
    as _i2;

part 'organization_resource_detailed_status_filters.g.dart';

/// Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.
abstract class OrganizationResourceDetailedStatusFilters
    with
        _i1.AWSEquatable<OrganizationResourceDetailedStatusFilters>
    implements
        Built<OrganizationResourceDetailedStatusFilters,
            OrganizationResourceDetailedStatusFiltersBuilder> {
  /// Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.
  factory OrganizationResourceDetailedStatusFilters({
    String? accountId,
    _i2.OrganizationResourceDetailedStatus? status,
  }) {
    return _$OrganizationResourceDetailedStatusFilters._(
      accountId: accountId,
      status: status,
    );
  }

  /// Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.
  factory OrganizationResourceDetailedStatusFilters.build(
      [void Function(OrganizationResourceDetailedStatusFiltersBuilder)
          updates]) = _$OrganizationResourceDetailedStatusFilters;

  const OrganizationResourceDetailedStatusFilters._();

  static const List<_i3.SmithySerializer> serializers = [
    OrganizationResourceDetailedStatusFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationResourceDetailedStatusFiltersBuilder b) {}

  /// The 12-digit account ID of the member account within an organization.
  String? get accountId;

  /// Indicates deployment status for conformance pack in a member account. When master account calls `PutOrganizationConformancePack` action for the first time, conformance pack status is created in the member account. When master account calls `PutOrganizationConformancePack` action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the master account deletes `OrganizationConformancePack` and disables service access for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Config sets the state of the conformance pack to:
  ///
  /// *   `CREATE_SUCCESSFUL` when conformance pack has been created in the member account.
  ///
  /// *   `CREATE\_IN\_PROGRESS` when conformance pack is being created in the member account.
  ///
  /// *   `CREATE_FAILED` when conformance pack creation has failed in the member account.
  ///
  /// *   `DELETE_FAILED` when conformance pack deletion has failed in the member account.
  ///
  /// *   `DELETE\_IN\_PROGRESS` when conformance pack is being deleted in the member account.
  ///
  /// *   `DELETE_SUCCESSFUL` when conformance pack has been deleted in the member account.
  ///
  /// *   `UPDATE_SUCCESSFUL` when conformance pack has been updated in the member account.
  ///
  /// *   `UPDATE\_IN\_PROGRESS` when conformance pack is being updated in the member account.
  ///
  /// *   `UPDATE_FAILED` when conformance pack deletion has failed in the member account.
  _i2.OrganizationResourceDetailedStatus? get status;
  @override
  List<Object?> get props => [
        accountId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'OrganizationResourceDetailedStatusFilters');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class OrganizationResourceDetailedStatusFiltersAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<OrganizationResourceDetailedStatusFilters> {
  const OrganizationResourceDetailedStatusFiltersAwsJson11Serializer()
      : super('OrganizationResourceDetailedStatusFilters');

  @override
  Iterable<Type> get types => const [
        OrganizationResourceDetailedStatusFilters,
        _$OrganizationResourceDetailedStatusFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationResourceDetailedStatusFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationResourceDetailedStatusFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.OrganizationResourceDetailedStatus),
            ) as _i2.OrganizationResourceDetailedStatus);
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
    final payload = (object as OrganizationResourceDetailedStatusFilters);
    final result = <Object?>[];
    if (payload.accountId != null) {
      result
        ..add('AccountId')
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.OrganizationResourceDetailedStatus),
        ));
    }
    return result;
  }
}
