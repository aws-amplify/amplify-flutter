// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.organization_conformance_pack_detailed_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_resource_detailed_status.dart'
    as _i2;

part 'organization_conformance_pack_detailed_status.g.dart';

/// Organization conformance pack creation or deletion status in each member account. This includes the name of the conformance pack, the status, error code and error message when the conformance pack creation or deletion failed.
abstract class OrganizationConformancePackDetailedStatus
    with
        _i1.AWSEquatable<OrganizationConformancePackDetailedStatus>
    implements
        Built<OrganizationConformancePackDetailedStatus,
            OrganizationConformancePackDetailedStatusBuilder> {
  /// Organization conformance pack creation or deletion status in each member account. This includes the name of the conformance pack, the status, error code and error message when the conformance pack creation or deletion failed.
  factory OrganizationConformancePackDetailedStatus({
    required String accountId,
    required String conformancePackName,
    required _i2.OrganizationResourceDetailedStatus status,
    String? errorCode,
    String? errorMessage,
    DateTime? lastUpdateTime,
  }) {
    return _$OrganizationConformancePackDetailedStatus._(
      accountId: accountId,
      conformancePackName: conformancePackName,
      status: status,
      errorCode: errorCode,
      errorMessage: errorMessage,
      lastUpdateTime: lastUpdateTime,
    );
  }

  /// Organization conformance pack creation or deletion status in each member account. This includes the name of the conformance pack, the status, error code and error message when the conformance pack creation or deletion failed.
  factory OrganizationConformancePackDetailedStatus.build(
      [void Function(OrganizationConformancePackDetailedStatusBuilder)
          updates]) = _$OrganizationConformancePackDetailedStatus;

  const OrganizationConformancePackDetailedStatus._();

  static const List<
          _i3.SmithySerializer<OrganizationConformancePackDetailedStatus>>
      serializers = [
    OrganizationConformancePackDetailedStatusAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConformancePackDetailedStatusBuilder b) {}

  /// The 12-digit account ID of a member account.
  String get accountId;

  /// The name of conformance pack deployed in the member account.
  String get conformancePackName;

  /// Indicates deployment status for conformance pack in a member account. When management account calls `PutOrganizationConformancePack` action for the first time, conformance pack status is created in the member account. When management account calls `PutOrganizationConformancePack` action for the second time, conformance pack status is updated in the member account. Conformance pack status is deleted when the management account deletes `OrganizationConformancePack` and disables service access for `config-multiaccountsetup.amazonaws.com`.
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
  _i2.OrganizationResourceDetailedStatus get status;

  /// An error code that is returned when conformance pack creation or deletion failed in the member account.
  String? get errorCode;

  /// An error message indicating that conformance pack account creation or deletion has failed due to an error in the member account.
  String? get errorMessage;

  /// The timestamp of the last status update.
  DateTime? get lastUpdateTime;
  @override
  List<Object?> get props => [
        accountId,
        conformancePackName,
        status,
        errorCode,
        errorMessage,
        lastUpdateTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('OrganizationConformancePackDetailedStatus')
          ..add(
            'accountId',
            accountId,
          )
          ..add(
            'conformancePackName',
            conformancePackName,
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

class OrganizationConformancePackDetailedStatusAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<OrganizationConformancePackDetailedStatus> {
  const OrganizationConformancePackDetailedStatusAwsJson11Serializer()
      : super('OrganizationConformancePackDetailedStatus');

  @override
  Iterable<Type> get types => const [
        OrganizationConformancePackDetailedStatus,
        _$OrganizationConformancePackDetailedStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConformancePackDetailedStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationConformancePackDetailedStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.OrganizationResourceDetailedStatus),
          ) as _i2.OrganizationResourceDetailedStatus);
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
    OrganizationConformancePackDetailedStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConformancePackDetailedStatus(
      :accountId,
      :conformancePackName,
      :status,
      :errorCode,
      :errorMessage,
      :lastUpdateTime
    ) = object;
    result$.addAll([
      'AccountId',
      serializers.serialize(
        accountId,
        specifiedType: const FullType(String),
      ),
      'ConformancePackName',
      serializers.serialize(
        conformancePackName,
        specifiedType: const FullType(String),
      ),
      'Status',
      serializers.serialize(
        status,
        specifiedType: const FullType(_i2.OrganizationResourceDetailedStatus),
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
