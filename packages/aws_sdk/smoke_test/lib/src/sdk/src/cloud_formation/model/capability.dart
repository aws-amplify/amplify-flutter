// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.capability; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Capability extends _i1.SmithyEnum<Capability> {
  const Capability._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Capability._sdkUnknown(String value) : super.sdkUnknown(value);

  static const capabilityAutoExpand = Capability._(
    0,
    'CAPABILITY_AUTO_EXPAND',
    'CAPABILITY_AUTO_EXPAND',
  );

  static const capabilityIam = Capability._(
    1,
    'CAPABILITY_IAM',
    'CAPABILITY_IAM',
  );

  static const capabilityNamedIam = Capability._(
    2,
    'CAPABILITY_NAMED_IAM',
    'CAPABILITY_NAMED_IAM',
  );

  /// All values of [Capability].
  static const values = <Capability>[
    Capability.capabilityAutoExpand,
    Capability.capabilityIam,
    Capability.capabilityNamedIam,
  ];

  static const List<_i1.SmithySerializer<Capability>> serializers = [
    _i1.SmithyEnumSerializer(
      'Capability',
      values: values,
      sdkUnknown: Capability._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension CapabilityHelpers on List<Capability> {
  /// Returns the value of [Capability] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Capability byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Capability] whose value matches [value].
  Capability byValue(String value) => firstWhere((el) => el.value == value);
}
