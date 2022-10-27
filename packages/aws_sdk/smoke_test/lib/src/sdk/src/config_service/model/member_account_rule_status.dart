// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.member_account_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MemberAccountRuleStatus extends _i1.SmithyEnum<MemberAccountRuleStatus> {
  const MemberAccountRuleStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const MemberAccountRuleStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const createFailed = MemberAccountRuleStatus._(
    0,
    'CREATE_FAILED',
    'CREATE_FAILED',
  );

  static const createInProgress = MemberAccountRuleStatus._(
    1,
    'CREATE_IN_PROGRESS',
    'CREATE_IN_PROGRESS',
  );

  static const createSuccessful = MemberAccountRuleStatus._(
    2,
    'CREATE_SUCCESSFUL',
    'CREATE_SUCCESSFUL',
  );

  static const deleteFailed = MemberAccountRuleStatus._(
    3,
    'DELETE_FAILED',
    'DELETE_FAILED',
  );

  static const deleteInProgress = MemberAccountRuleStatus._(
    4,
    'DELETE_IN_PROGRESS',
    'DELETE_IN_PROGRESS',
  );

  static const deleteSuccessful = MemberAccountRuleStatus._(
    5,
    'DELETE_SUCCESSFUL',
    'DELETE_SUCCESSFUL',
  );

  static const updateFailed = MemberAccountRuleStatus._(
    6,
    'UPDATE_FAILED',
    'UPDATE_FAILED',
  );

  static const updateInProgress = MemberAccountRuleStatus._(
    7,
    'UPDATE_IN_PROGRESS',
    'UPDATE_IN_PROGRESS',
  );

  static const updateSuccessful = MemberAccountRuleStatus._(
    8,
    'UPDATE_SUCCESSFUL',
    'UPDATE_SUCCESSFUL',
  );

  /// All values of [MemberAccountRuleStatus].
  static const values = <MemberAccountRuleStatus>[
    MemberAccountRuleStatus.createFailed,
    MemberAccountRuleStatus.createInProgress,
    MemberAccountRuleStatus.createSuccessful,
    MemberAccountRuleStatus.deleteFailed,
    MemberAccountRuleStatus.deleteInProgress,
    MemberAccountRuleStatus.deleteSuccessful,
    MemberAccountRuleStatus.updateFailed,
    MemberAccountRuleStatus.updateInProgress,
    MemberAccountRuleStatus.updateSuccessful,
  ];

  static const List<_i1.SmithySerializer<MemberAccountRuleStatus>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'MemberAccountRuleStatus',
      values: values,
      sdkUnknown: MemberAccountRuleStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension MemberAccountRuleStatusHelpers on List<MemberAccountRuleStatus> {
  /// Returns the value of [MemberAccountRuleStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MemberAccountRuleStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MemberAccountRuleStatus] whose value matches [value].
  MemberAccountRuleStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
