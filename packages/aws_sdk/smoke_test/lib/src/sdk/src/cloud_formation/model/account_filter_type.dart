// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.account_filter_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AccountFilterType extends _i1.SmithyEnum<AccountFilterType> {
  const AccountFilterType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AccountFilterType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const difference = AccountFilterType._(
    0,
    'DIFFERENCE',
    'DIFFERENCE',
  );

  static const intersection = AccountFilterType._(
    1,
    'INTERSECTION',
    'INTERSECTION',
  );

  static const none = AccountFilterType._(
    2,
    'NONE',
    'NONE',
  );

  static const union = AccountFilterType._(
    3,
    'UNION',
    'UNION',
  );

  /// All values of [AccountFilterType].
  static const values = <AccountFilterType>[
    AccountFilterType.difference,
    AccountFilterType.intersection,
    AccountFilterType.none,
    AccountFilterType.union,
  ];

  static const List<_i1.SmithySerializer<AccountFilterType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AccountFilterType',
      values: values,
      sdkUnknown: AccountFilterType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension AccountFilterTypeHelpers on List<AccountFilterType> {
  /// Returns the value of [AccountFilterType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AccountFilterType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AccountFilterType] whose value matches [value].
  AccountFilterType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
