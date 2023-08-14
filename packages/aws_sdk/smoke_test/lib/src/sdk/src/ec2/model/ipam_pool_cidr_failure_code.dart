// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool_cidr_failure_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolCidrFailureCode extends _i1.SmithyEnum<IpamPoolCidrFailureCode> {
  const IpamPoolCidrFailureCode._(
    super.index,
    super.name,
    super.value,
  );

  const IpamPoolCidrFailureCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const cidrNotAvailable = IpamPoolCidrFailureCode._(
    0,
    'cidr_not_available',
    'cidr-not-available',
  );

  static const limitExceeded = IpamPoolCidrFailureCode._(
    1,
    'limit_exceeded',
    'limit-exceeded',
  );

  /// All values of [IpamPoolCidrFailureCode].
  static const values = <IpamPoolCidrFailureCode>[
    IpamPoolCidrFailureCode.cidrNotAvailable,
    IpamPoolCidrFailureCode.limitExceeded,
  ];

  static const List<_i1.SmithySerializer<IpamPoolCidrFailureCode>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'IpamPoolCidrFailureCode',
      values: values,
      sdkUnknown: IpamPoolCidrFailureCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolCidrFailureCodeHelpers on List<IpamPoolCidrFailureCode> {
  /// Returns the value of [IpamPoolCidrFailureCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolCidrFailureCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolCidrFailureCode] whose value matches [value].
  IpamPoolCidrFailureCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
