// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_instance_platform; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CapacityReservationInstancePlatform
    extends _i1.SmithyEnum<CapacityReservationInstancePlatform> {
  const CapacityReservationInstancePlatform._(
    super.index,
    super.name,
    super.value,
  );

  const CapacityReservationInstancePlatform._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const linuxUnix = CapacityReservationInstancePlatform._(
    0,
    'LINUX_UNIX',
    'Linux/UNIX',
  );

  static const linuxWithSqlServerEnterprise =
      CapacityReservationInstancePlatform._(
    1,
    'LINUX_WITH_SQL_SERVER_ENTERPRISE',
    'Linux with SQL Server Enterprise',
  );

  static const linuxWithSqlServerStandard =
      CapacityReservationInstancePlatform._(
    2,
    'LINUX_WITH_SQL_SERVER_STANDARD',
    'Linux with SQL Server Standard',
  );

  static const linuxWithSqlServerWeb = CapacityReservationInstancePlatform._(
    3,
    'LINUX_WITH_SQL_SERVER_WEB',
    'Linux with SQL Server Web',
  );

  static const redHatEnterpriseLinux = CapacityReservationInstancePlatform._(
    4,
    'RED_HAT_ENTERPRISE_LINUX',
    'Red Hat Enterprise Linux',
  );

  static const rhelWithHa = CapacityReservationInstancePlatform._(
    5,
    'RHEL_WITH_HA',
    'RHEL with HA',
  );

  static const rhelWithHaAndSqlServerEnterprise =
      CapacityReservationInstancePlatform._(
    6,
    'RHEL_WITH_HA_AND_SQL_SERVER_ENTERPRISE',
    'RHEL with HA and SQL Server Enterprise',
  );

  static const rhelWithHaAndSqlServerStandard =
      CapacityReservationInstancePlatform._(
    7,
    'RHEL_WITH_HA_AND_SQL_SERVER_STANDARD',
    'RHEL with HA and SQL Server Standard',
  );

  static const rhelWithSqlServerEnterprise =
      CapacityReservationInstancePlatform._(
    8,
    'RHEL_WITH_SQL_SERVER_ENTERPRISE',
    'RHEL with SQL Server Enterprise',
  );

  static const rhelWithSqlServerStandard =
      CapacityReservationInstancePlatform._(
    9,
    'RHEL_WITH_SQL_SERVER_STANDARD',
    'RHEL with SQL Server Standard',
  );

  static const rhelWithSqlServerWeb = CapacityReservationInstancePlatform._(
    10,
    'RHEL_WITH_SQL_SERVER_WEB',
    'RHEL with SQL Server Web',
  );

  static const suseLinux = CapacityReservationInstancePlatform._(
    11,
    'SUSE_LINUX',
    'SUSE Linux',
  );

  static const windows = CapacityReservationInstancePlatform._(
    12,
    'WINDOWS',
    'Windows',
  );

  static const windowsWithSqlServer = CapacityReservationInstancePlatform._(
    13,
    'WINDOWS_WITH_SQL_SERVER',
    'Windows with SQL Server',
  );

  static const windowsWithSqlServerEnterprise =
      CapacityReservationInstancePlatform._(
    14,
    'WINDOWS_WITH_SQL_SERVER_ENTERPRISE',
    'Windows with SQL Server Enterprise',
  );

  static const windowsWithSqlServerStandard =
      CapacityReservationInstancePlatform._(
    15,
    'WINDOWS_WITH_SQL_SERVER_STANDARD',
    'Windows with SQL Server Standard',
  );

  static const windowsWithSqlServerWeb = CapacityReservationInstancePlatform._(
    16,
    'WINDOWS_WITH_SQL_SERVER_WEB',
    'Windows with SQL Server Web',
  );

  /// All values of [CapacityReservationInstancePlatform].
  static const values = <CapacityReservationInstancePlatform>[
    CapacityReservationInstancePlatform.linuxUnix,
    CapacityReservationInstancePlatform.linuxWithSqlServerEnterprise,
    CapacityReservationInstancePlatform.linuxWithSqlServerStandard,
    CapacityReservationInstancePlatform.linuxWithSqlServerWeb,
    CapacityReservationInstancePlatform.redHatEnterpriseLinux,
    CapacityReservationInstancePlatform.rhelWithHa,
    CapacityReservationInstancePlatform.rhelWithHaAndSqlServerEnterprise,
    CapacityReservationInstancePlatform.rhelWithHaAndSqlServerStandard,
    CapacityReservationInstancePlatform.rhelWithSqlServerEnterprise,
    CapacityReservationInstancePlatform.rhelWithSqlServerStandard,
    CapacityReservationInstancePlatform.rhelWithSqlServerWeb,
    CapacityReservationInstancePlatform.suseLinux,
    CapacityReservationInstancePlatform.windows,
    CapacityReservationInstancePlatform.windowsWithSqlServer,
    CapacityReservationInstancePlatform.windowsWithSqlServerEnterprise,
    CapacityReservationInstancePlatform.windowsWithSqlServerStandard,
    CapacityReservationInstancePlatform.windowsWithSqlServerWeb,
  ];

  static const List<_i1.SmithySerializer<CapacityReservationInstancePlatform>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CapacityReservationInstancePlatform',
      values: values,
      sdkUnknown: CapacityReservationInstancePlatform._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CapacityReservationInstancePlatformHelpers
    on List<CapacityReservationInstancePlatform> {
  /// Returns the value of [CapacityReservationInstancePlatform] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CapacityReservationInstancePlatform byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CapacityReservationInstancePlatform] whose value matches [value].
  CapacityReservationInstancePlatform byValue(String value) =>
      firstWhere((el) => el.value == value);
}
