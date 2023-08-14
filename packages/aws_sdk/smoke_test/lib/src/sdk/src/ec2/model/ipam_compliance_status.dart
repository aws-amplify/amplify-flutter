// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_compliance_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamComplianceStatus extends _i1.SmithyEnum<IpamComplianceStatus> {
  const IpamComplianceStatus._(
    super.index,
    super.name,
    super.value,
  );

  const IpamComplianceStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const compliant = IpamComplianceStatus._(
    0,
    'compliant',
    'compliant',
  );

  static const ignored = IpamComplianceStatus._(
    1,
    'ignored',
    'ignored',
  );

  static const noncompliant = IpamComplianceStatus._(
    2,
    'noncompliant',
    'noncompliant',
  );

  static const unmanaged = IpamComplianceStatus._(
    3,
    'unmanaged',
    'unmanaged',
  );

  /// All values of [IpamComplianceStatus].
  static const values = <IpamComplianceStatus>[
    IpamComplianceStatus.compliant,
    IpamComplianceStatus.ignored,
    IpamComplianceStatus.noncompliant,
    IpamComplianceStatus.unmanaged,
  ];

  static const List<_i1.SmithySerializer<IpamComplianceStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'IpamComplianceStatus',
      values: values,
      sdkUnknown: IpamComplianceStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamComplianceStatusHelpers on List<IpamComplianceStatus> {
  /// Returns the value of [IpamComplianceStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamComplianceStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamComplianceStatus] whose value matches [value].
  IpamComplianceStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
