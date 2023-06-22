// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.organization_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OrganizationStatus extends _i1.SmithyEnum<OrganizationStatus> {
  const OrganizationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OrganizationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = OrganizationStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabledPermanently = OrganizationStatus._(
    1,
    'DISABLED_PERMANENTLY',
    'DISABLED_PERMANENTLY',
  );

  static const enabled = OrganizationStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  /// All values of [OrganizationStatus].
  static const values = <OrganizationStatus>[
    OrganizationStatus.disabled,
    OrganizationStatus.disabledPermanently,
    OrganizationStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<OrganizationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'OrganizationStatus',
      values: values,
      sdkUnknown: OrganizationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension OrganizationStatusHelpers on List<OrganizationStatus> {
  /// Returns the value of [OrganizationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OrganizationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OrganizationStatus] whose value matches [value].
  OrganizationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
