// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.organization_conformance_pack_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_status.dart'
    as _i2;

part 'organization_conformance_pack_status.g.dart';

/// Returns the status for an organization conformance pack in an organization.
abstract class OrganizationConformancePackStatus
    with
        _i1.AWSEquatable<OrganizationConformancePackStatus>
    implements
        Built<OrganizationConformancePackStatus,
            OrganizationConformancePackStatusBuilder> {
  /// Returns the status for an organization conformance pack in an organization.
  factory OrganizationConformancePackStatus({
    required String organizationConformancePackName,
    required _i2.OrganizationResourceStatus status,
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
  }) {
    return _$OrganizationConformancePackStatus._(
      organizationConformancePackName: organizationConformancePackName,
      status: status,
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
    );
  }

  /// Returns the status for an organization conformance pack in an organization.
  factory OrganizationConformancePackStatus.build(
          [void Function(OrganizationConformancePackStatusBuilder) updates]) =
      _$OrganizationConformancePackStatus;

  const OrganizationConformancePackStatus._();

  static const List<_i3.SmithySerializer<OrganizationConformancePackStatus>>
      serializers = [OrganizationConformancePackStatusAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConformancePackStatusBuilder b) {}

  /// The name that you assign to organization conformance pack.
  String get organizationConformancePackName;

  /// Indicates deployment status of an organization conformance pack. When management account calls PutOrganizationConformancePack for the first time, conformance pack status is created in all the member accounts. When management account calls PutOrganizationConformancePack for the second time, conformance pack status is updated in all the member accounts. Additionally, conformance pack status is updated when one or more member accounts join or leave an organization. Conformance pack status is deleted when the management account deletes OrganizationConformancePack in all the member accounts and disables service access for `config-multiaccountsetup.amazonaws.com`.
  ///
  /// Config sets the state of the conformance pack to:
  ///
  /// *   `CREATE_SUCCESSFUL` when an organization conformance pack has been successfully created in all the member accounts.
  ///
  /// *   `CREATE\_IN\_PROGRESS` when an organization conformance pack creation is in progress.
  ///
  /// *   `CREATE_FAILED` when an organization conformance pack creation failed in one or more member accounts within that organization.
  ///
  /// *   `DELETE_FAILED` when an organization conformance pack deletion failed in one or more member accounts within that organization.
  ///
  /// *   `DELETE\_IN\_PROGRESS` when an organization conformance pack deletion is in progress.
  ///
  /// *   `DELETE_SUCCESSFUL` when an organization conformance pack has been successfully deleted from all the member accounts.
  ///
  /// *   `UPDATE_SUCCESSFUL` when an organization conformance pack has been successfully updated in all the member accounts.
  ///
  /// *   `UPDATE\_IN\_PROGRESS` when an organization conformance pack update is in progress.
  ///
  /// *   `UPDATE_FAILED` when an organization conformance pack update failed in one or more member accounts within that organization.
  _i2.OrganizationResourceStatus get status;

  /// An error code that is returned when organization conformance pack creation or deletion has failed in a member account.
  String? get errorCode;

  /// An error message indicating that organization conformance pack creation or deletion failed due to an error.
  String? get errorMessage;

  /// The timestamp of the last update.
  DateTime? get lastUpdateTime;
  @override
  List<Object?> get props => [
        organizationConformancePackName,
        status,
        errorCode,
        errorMessage,
        lastUpdateTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationConformancePackStatus')
          ..add(
            'organizationConformancePackName',
            organizationConformancePackName,
          )
          ..add(
            'status',
            status,
          )
          ..add(
            'errorCode',
            errorCode,
          )
          ..add(
            'errorMessage',
            errorMessage,
          )
          ..add(
            'lastUpdateTime',
            lastUpdateTime,
          );
    return helper.toString();
  }
}

class OrganizationConformancePackStatusAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<OrganizationConformancePackStatus> {
  const OrganizationConformancePackStatusAwsJson11Serializer()
      : super('OrganizationConformancePackStatus');

  @override
  Iterable<Type> get types => const [
        OrganizationConformancePackStatus,
        _$OrganizationConformancePackStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConformancePackStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationConformancePackStatusBuilder();
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
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OrganizationResourceStatus),
          ) as _i2.OrganizationResourceStatus);
        case 'ErrorCode':
          result.errorCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ErrorMessage':
          result.errorMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationConformancePackStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConformancePackStatus(
      :organizationConformancePackName,
      :status,
      :errorCode,
      :errorMessage,
      :lastUpdateTime
    ) = object;
    result$.addAll([
      'OrganizationConformancePackName',
      serializers.serialize(
        organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
      'Status',
      serializers.serialize(
        status,
        specifiedType: const FullType(_i2.OrganizationResourceStatus),
      ),
    ]);
    if (errorCode != null) {
      result$
        ..add('ErrorCode')
        ..add(serializers.serialize(
          errorCode,
          specifiedType: const FullType(String),
        ));
    }
    if (errorMessage != null) {
      result$
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          errorMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (lastUpdateTime != null) {
      result$
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          lastUpdateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
