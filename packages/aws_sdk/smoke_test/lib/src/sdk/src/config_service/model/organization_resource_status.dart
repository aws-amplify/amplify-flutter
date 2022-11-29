// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.organization_resource_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationResourceStatus
    extends _i1.SmithyEnum<OrganizationResourceStatus> {
  const OrganizationResourceStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationResourceStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const createFailed = OrganizationResourceStatus._(
    0,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = OrganizationResourceStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const createSuccessful = OrganizationResourceStatus._(
    2,
    'CREATE_SUCCESSFUL',
    'CREATE_SUCCESSFUL',
  );

  static const deleteFailed = OrganizationResourceStatus._(
    3,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = OrganizationResourceStatus._(
    4,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deleteSuccessful = OrganizationResourceStatus._(
    5,
    'DELETE_SUCCESSFUL',
    'DELETE_SUCCESSFUL',
  );

  static const updateFailed = OrganizationResourceStatus._(
    6,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = OrganizationResourceStatus._(
    7,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateSuccessful = OrganizationResourceStatus._(
    8,
    'UPDATE_SUCCESSFUL',
    'UPDATE_SUCCESSFUL',
  );

  /// All values of [OrganizationResourceStatus].
  static const values = <OrganizationResourceStatus>[
    OrganizationResourceStatus.createFailed,
    OrganizationResourceStatus.createInProgress,
    OrganizationResourceStatus.createSuccessful,
    OrganizationResourceStatus.deleteFailed,
    OrganizationResourceStatus.deleteInProgress,
    OrganizationResourceStatus.deleteSuccessful,
    OrganizationResourceStatus.updateFailed,
    OrganizationResourceStatus.updateInProgress,
    OrganizationResourceStatus.updateSuccessful,
  ];

  static const List<_i1.SmithySerializer<OrganizationResourceStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'OrganizationResourceStatus',
      values: values,
      sdkUnknown: OrganizationResourceStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrganizationResourceStatusHelpers
    on List<OrganizationResourceStatus> {
  /// Returns the value of [OrganizationResourceStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationResourceStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationResourceStatus] whose value matches [value].
  OrganizationResourceStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
