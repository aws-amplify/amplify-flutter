// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.amd_sev_snp_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AmdSevSnpSpecification extends _i1.SmithyEnum<AmdSevSnpSpecification> {
  const AmdSevSnpSpecification._(
    super.index,
    super.name,
    super.value,
  );

  const AmdSevSnpSpecification._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = AmdSevSnpSpecification._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = AmdSevSnpSpecification._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [AmdSevSnpSpecification].
  static const values = <AmdSevSnpSpecification>[
    AmdSevSnpSpecification.disabled,
    AmdSevSnpSpecification.enabled,
  ];

  static const List<_i1.SmithySerializer<AmdSevSnpSpecification>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'AmdSevSnpSpecification',
      values: values,
      sdkUnknown: AmdSevSnpSpecification._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AmdSevSnpSpecificationHelpers on List<AmdSevSnpSpecification> {
  /// Returns the value of [AmdSevSnpSpecification] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AmdSevSnpSpecification byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AmdSevSnpSpecification] whose value matches [value].
  AmdSevSnpSpecification byValue(String value) =>
      firstWhere((el) => el.value == value);
}
