// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
    required String organizationConformancePackName,
    required _i2.OrganizationResourceStatus status,
  }) {
    return _$OrganizationConformancePackStatus._(
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
      organizationConformancePackName: organizationConformancePackName,
      status: status,
    );
  }

  /// Returns the status for an organization conformance pack in an organization.
  factory OrganizationConformancePackStatus.build(
          [void Function(OrganizationConformancePackStatusBuilder) updates]) =
      _$OrganizationConformancePackStatus;

  const OrganizationConformancePackStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    OrganizationConformancePackStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConformancePackStatusBuilder b) {}

  /// An error code that is returned when organization conformance pack creation or deletion has failed in a member account.
  String? get errorCode;

  /// An error message indicating that organization conformance pack creation or deletion failed due to an error.
  String? get errorMessage;

  /// The timestamp of the last update.
  DateTime? get lastUpdateTime;

  /// The name that you assign to organization conformance pack.
  String get organizationConformancePackName;

  /// Indicates deployment status of an organization conformance pack. When master account calls PutOrganizationConformancePack for the first time, conformance pack status is created in all the member accounts. When master account calls PutOrganizationConformancePack for the second time, conformance pack status is updated in all the member accounts. Additionally, conformance pack status is updated when one or more member accounts join or leave an organization. Conformance pack status is deleted when the master account deletes OrganizationConformancePack in all the member accounts and disables service access for `config-multiaccountsetup.amazonaws.com`.
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
  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
        lastUpdateTime,
        organizationConformancePackName,
        status,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationConformancePackStatus');
    helper.add(
      'errorCode',
      errorCode,
    );
    helper.add(
      'errorMessage',
      errorMessage,
    );
    helper.add(
      'lastUpdateTime',
      lastUpdateTime,
    );
    helper.add(
      'organizationConformancePackName',
      organizationConformancePackName,
    );
    helper.add(
      'status',
      status,
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
      switch (key) {
        case 'ErrorCode':
          if (value != null) {
            result.errorCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ErrorMessage':
          if (value != null) {
            result.errorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastUpdateTime':
          if (value != null) {
            result.lastUpdateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.OrganizationResourceStatus),
          ) as _i2.OrganizationResourceStatus);
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
    final payload = (object as OrganizationConformancePackStatus);
    final result = <Object?>[
      'OrganizationConformancePackName',
      serializers.serialize(
        payload.organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
      'Status',
      serializers.serialize(
        payload.status,
        specifiedType: const FullType(_i2.OrganizationResourceStatus),
      ),
    ];
    if (payload.errorCode != null) {
      result
        ..add('ErrorCode')
        ..add(serializers.serialize(
          payload.errorCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.errorMessage != null) {
      result
        ..add('ErrorMessage')
        ..add(serializers.serialize(
          payload.errorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastUpdateTime != null) {
      result
        ..add('LastUpdateTime')
        ..add(serializers.serialize(
          payload.lastUpdateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
