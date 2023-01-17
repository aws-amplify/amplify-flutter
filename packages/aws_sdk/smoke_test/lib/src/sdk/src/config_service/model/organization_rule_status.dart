// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationRuleStatus extends _i1.SmithyEnum<OrganizationRuleStatus> {
  const OrganizationRuleStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationRuleStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const createFailed = OrganizationRuleStatus._(
    0,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = OrganizationRuleStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const createSuccessful = OrganizationRuleStatus._(
    2,
    'CREATE_SUCCESSFUL',
    'CREATE_SUCCESSFUL',
  );

  static const deleteFailed = OrganizationRuleStatus._(
    3,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = OrganizationRuleStatus._(
    4,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deleteSuccessful = OrganizationRuleStatus._(
    5,
    'DELETE_SUCCESSFUL',
    'DELETE_SUCCESSFUL',
  );

  static const updateFailed = OrganizationRuleStatus._(
    6,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = OrganizationRuleStatus._(
    7,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateSuccessful = OrganizationRuleStatus._(
    8,
    'UPDATE_SUCCESSFUL',
    'UPDATE_SUCCESSFUL',
  );

  /// All values of [OrganizationRuleStatus].
  static const values = <OrganizationRuleStatus>[
    OrganizationRuleStatus.createFailed,
    OrganizationRuleStatus.createInProgress,
    OrganizationRuleStatus.createSuccessful,
    OrganizationRuleStatus.deleteFailed,
    OrganizationRuleStatus.deleteInProgress,
    OrganizationRuleStatus.deleteSuccessful,
    OrganizationRuleStatus.updateFailed,
    OrganizationRuleStatus.updateInProgress,
    OrganizationRuleStatus.updateSuccessful,
  ];

  static const List<_i1.SmithySerializer<OrganizationRuleStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'OrganizationRuleStatus',
      values: values,
      sdkUnknown: OrganizationRuleStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension OrganizationRuleStatusHelpers on List<OrganizationRuleStatus> {
  /// Returns the value of [OrganizationRuleStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationRuleStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationRuleStatus] whose value matches [value].
  OrganizationRuleStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
