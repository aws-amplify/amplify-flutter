// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_resource_detailed_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationResourceDetailedStatus
    extends _i1.SmithyEnum<OrganizationResourceDetailedStatus> {
  const OrganizationResourceDetailedStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationResourceDetailedStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const createFailed = OrganizationResourceDetailedStatus._(
    0,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = OrganizationResourceDetailedStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const createSuccessful = OrganizationResourceDetailedStatus._(
    2,
    'CREATE_SUCCESSFUL',
    'CREATE_SUCCESSFUL',
  );

  static const deleteFailed = OrganizationResourceDetailedStatus._(
    3,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = OrganizationResourceDetailedStatus._(
    4,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deleteSuccessful = OrganizationResourceDetailedStatus._(
    5,
    'DELETE_SUCCESSFUL',
    'DELETE_SUCCESSFUL',
  );

  static const updateFailed = OrganizationResourceDetailedStatus._(
    6,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = OrganizationResourceDetailedStatus._(
    7,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateSuccessful = OrganizationResourceDetailedStatus._(
    8,
    'UPDATE_SUCCESSFUL',
    'UPDATE_SUCCESSFUL',
  );

  /// All values of [OrganizationResourceDetailedStatus].
  static const values = <OrganizationResourceDetailedStatus>[
    OrganizationResourceDetailedStatus.createFailed,
    OrganizationResourceDetailedStatus.createInProgress,
    OrganizationResourceDetailedStatus.createSuccessful,
    OrganizationResourceDetailedStatus.deleteFailed,
    OrganizationResourceDetailedStatus.deleteInProgress,
    OrganizationResourceDetailedStatus.deleteSuccessful,
    OrganizationResourceDetailedStatus.updateFailed,
    OrganizationResourceDetailedStatus.updateInProgress,
    OrganizationResourceDetailedStatus.updateSuccessful,
  ];

  static const List<_i1.SmithySerializer<OrganizationResourceDetailedStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OrganizationResourceDetailedStatus',
      values: values,
      sdkUnknown: OrganizationResourceDetailedStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrganizationResourceDetailedStatusHelpers
    on List<OrganizationResourceDetailedStatus> {
  /// Returns the value of [OrganizationResourceDetailedStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationResourceDetailedStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationResourceDetailedStatus] whose value matches [value].
  OrganizationResourceDetailedStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
