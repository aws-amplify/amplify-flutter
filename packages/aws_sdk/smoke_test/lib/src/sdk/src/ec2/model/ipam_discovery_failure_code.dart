// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_discovery_failure_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamDiscoveryFailureCode
    extends _i1.SmithyEnum<IpamDiscoveryFailureCode> {
  const IpamDiscoveryFailureCode._(
    super.index,
    super.name,
    super.value,
  );

  const IpamDiscoveryFailureCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const assumeRoleFailure = IpamDiscoveryFailureCode._(
    0,
    'assume_role_failure',
    'assume-role-failure',
  );

  static const throttlingFailure = IpamDiscoveryFailureCode._(
    1,
    'throttling_failure',
    'throttling-failure',
  );

  static const unauthorizedFailure = IpamDiscoveryFailureCode._(
    2,
    'unauthorized_failure',
    'unauthorized-failure',
  );

  /// All values of [IpamDiscoveryFailureCode].
  static const values = <IpamDiscoveryFailureCode>[
    IpamDiscoveryFailureCode.assumeRoleFailure,
    IpamDiscoveryFailureCode.throttlingFailure,
    IpamDiscoveryFailureCode.unauthorizedFailure,
  ];

  static const List<_i1.SmithySerializer<IpamDiscoveryFailureCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'IpamDiscoveryFailureCode',
      values: values,
      sdkUnknown: IpamDiscoveryFailureCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamDiscoveryFailureCodeHelpers on List<IpamDiscoveryFailureCode> {
  /// Returns the value of [IpamDiscoveryFailureCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamDiscoveryFailureCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamDiscoveryFailureCode] whose value matches [value].
  IpamDiscoveryFailureCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
