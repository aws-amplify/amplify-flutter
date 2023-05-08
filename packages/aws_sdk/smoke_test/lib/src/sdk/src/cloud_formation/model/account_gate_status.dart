// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.account_gate_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AccountGateStatus extends _i1.SmithyEnum<AccountGateStatus> {
  const AccountGateStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AccountGateStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const failed = AccountGateStatus._(
    0,
    'FAILED',
    'FAILED',
  );

  static const skipped = AccountGateStatus._(
    1,
    'SKIPPED',
    'SKIPPED',
  );

  static const succeeded = AccountGateStatus._(
    2,
    'SUCCEEDED',
    'SUCCEEDED',
  );

  /// All values of [AccountGateStatus].
  static const values = <AccountGateStatus>[
    AccountGateStatus.failed,
    AccountGateStatus.skipped,
    AccountGateStatus.succeeded,
  ];

  static const List<_i1.SmithySerializer<AccountGateStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'AccountGateStatus',
      values: values,
      sdkUnknown: AccountGateStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension AccountGateStatusHelpers on List<AccountGateStatus> {
  /// Returns the value of [AccountGateStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AccountGateStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AccountGateStatus] whose value matches [value].
  AccountGateStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
