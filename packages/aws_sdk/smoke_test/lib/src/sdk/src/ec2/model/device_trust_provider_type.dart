// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.device_trust_provider_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeviceTrustProviderType extends _i1.SmithyEnum<DeviceTrustProviderType> {
  const DeviceTrustProviderType._(
    super.index,
    super.name,
    super.value,
  );

  const DeviceTrustProviderType._sdkUnknown(super.value) : super.sdkUnknown();

  static const crowdstrike = DeviceTrustProviderType._(
    0,
    'crowdstrike',
    'crowdstrike',
  );

  static const jamf = DeviceTrustProviderType._(
    1,
    'jamf',
    'jamf',
  );

  /// All values of [DeviceTrustProviderType].
  static const values = <DeviceTrustProviderType>[
    DeviceTrustProviderType.crowdstrike,
    DeviceTrustProviderType.jamf,
  ];

  static const List<_i1.SmithySerializer<DeviceTrustProviderType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'DeviceTrustProviderType',
      values: values,
      sdkUnknown: DeviceTrustProviderType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DeviceTrustProviderTypeHelpers on List<DeviceTrustProviderType> {
  /// Returns the value of [DeviceTrustProviderType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeviceTrustProviderType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeviceTrustProviderType] whose value matches [value].
  DeviceTrustProviderType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
