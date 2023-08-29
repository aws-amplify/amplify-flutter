// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dns_record_ip_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DnsRecordIpType extends _i1.SmithyEnum<DnsRecordIpType> {
  const DnsRecordIpType._(
    super.index,
    super.name,
    super.value,
  );

  const DnsRecordIpType._sdkUnknown(super.value) : super.sdkUnknown();

  static const dualstack = DnsRecordIpType._(
    0,
    'dualstack',
    'dualstack',
  );

  static const ipv4 = DnsRecordIpType._(
    1,
    'ipv4',
    'ipv4',
  );

  static const ipv6 = DnsRecordIpType._(
    2,
    'ipv6',
    'ipv6',
  );

  static const serviceDefined = DnsRecordIpType._(
    3,
    'service_defined',
    'service-defined',
  );

  /// All values of [DnsRecordIpType].
  static const values = <DnsRecordIpType>[
    DnsRecordIpType.dualstack,
    DnsRecordIpType.ipv4,
    DnsRecordIpType.ipv6,
    DnsRecordIpType.serviceDefined,
  ];

  static const List<_i1.SmithySerializer<DnsRecordIpType>> serializers = [
    _i1.SmithyEnumSerializer(
      'DnsRecordIpType',
      values: values,
      sdkUnknown: DnsRecordIpType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DnsRecordIpTypeHelpers on List<DnsRecordIpType> {
  /// Returns the value of [DnsRecordIpType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DnsRecordIpType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DnsRecordIpType] whose value matches [value].
  DnsRecordIpType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
