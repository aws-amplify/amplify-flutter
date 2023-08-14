// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.byoip_cidr_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ByoipCidrState extends _i1.SmithyEnum<ByoipCidrState> {
  const ByoipCidrState._(
    super.index,
    super.name,
    super.value,
  );

  const ByoipCidrState._sdkUnknown(super.value) : super.sdkUnknown();

  static const advertised = ByoipCidrState._(
    0,
    'advertised',
    'advertised',
  );

  static const deprovisioned = ByoipCidrState._(
    1,
    'deprovisioned',
    'deprovisioned',
  );

  static const failedDeprovision = ByoipCidrState._(
    2,
    'failed_deprovision',
    'failed-deprovision',
  );

  static const failedProvision = ByoipCidrState._(
    3,
    'failed_provision',
    'failed-provision',
  );

  static const pendingDeprovision = ByoipCidrState._(
    4,
    'pending_deprovision',
    'pending-deprovision',
  );

  static const pendingProvision = ByoipCidrState._(
    5,
    'pending_provision',
    'pending-provision',
  );

  static const provisioned = ByoipCidrState._(
    6,
    'provisioned',
    'provisioned',
  );

  static const provisionedNotPubliclyAdvertisable = ByoipCidrState._(
    7,
    'provisioned_not_publicly_advertisable',
    'provisioned-not-publicly-advertisable',
  );

  /// All values of [ByoipCidrState].
  static const values = <ByoipCidrState>[
    ByoipCidrState.advertised,
    ByoipCidrState.deprovisioned,
    ByoipCidrState.failedDeprovision,
    ByoipCidrState.failedProvision,
    ByoipCidrState.pendingDeprovision,
    ByoipCidrState.pendingProvision,
    ByoipCidrState.provisioned,
    ByoipCidrState.provisionedNotPubliclyAdvertisable,
  ];

  static const List<_i1.SmithySerializer<ByoipCidrState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ByoipCidrState',
      values: values,
      sdkUnknown: ByoipCidrState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ByoipCidrStateHelpers on List<ByoipCidrState> {
  /// Returns the value of [ByoipCidrState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ByoipCidrState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ByoipCidrState] whose value matches [value].
  ByoipCidrState byValue(String value) => firstWhere((el) => el.value == value);
}
