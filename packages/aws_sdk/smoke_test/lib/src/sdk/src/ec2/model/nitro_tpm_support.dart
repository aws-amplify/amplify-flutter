// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nitro_tpm_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NitroTpmSupport extends _i1.SmithyEnum<NitroTpmSupport> {
  const NitroTpmSupport._(
    super.index,
    super.name,
    super.value,
  );

  const NitroTpmSupport._sdkUnknown(super.value) : super.sdkUnknown();

  static const supported = NitroTpmSupport._(
    0,
    'SUPPORTED',
    'supported',
  );

  static const unsupported = NitroTpmSupport._(
    1,
    'UNSUPPORTED',
    'unsupported',
  );

  /// All values of [NitroTpmSupport].
  static const values = <NitroTpmSupport>[
    NitroTpmSupport.supported,
    NitroTpmSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<NitroTpmSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'NitroTpmSupport',
      values: values,
      sdkUnknown: NitroTpmSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NitroTpmSupportHelpers on List<NitroTpmSupport> {
  /// Returns the value of [NitroTpmSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NitroTpmSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NitroTpmSupport] whose value matches [value].
  NitroTpmSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
