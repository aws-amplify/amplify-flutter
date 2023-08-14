// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.nitro_enclaves_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class NitroEnclavesSupport extends _i1.SmithyEnum<NitroEnclavesSupport> {
  const NitroEnclavesSupport._(
    super.index,
    super.name,
    super.value,
  );

  const NitroEnclavesSupport._sdkUnknown(super.value) : super.sdkUnknown();

  static const supported = NitroEnclavesSupport._(
    0,
    'SUPPORTED',
    'supported',
  );

  static const unsupported = NitroEnclavesSupport._(
    1,
    'UNSUPPORTED',
    'unsupported',
  );

  /// All values of [NitroEnclavesSupport].
  static const values = <NitroEnclavesSupport>[
    NitroEnclavesSupport.supported,
    NitroEnclavesSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<NitroEnclavesSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'NitroEnclavesSupport',
      values: values,
      sdkUnknown: NitroEnclavesSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension NitroEnclavesSupportHelpers on List<NitroEnclavesSupport> {
  /// Returns the value of [NitroEnclavesSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  NitroEnclavesSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [NitroEnclavesSupport] whose value matches [value].
  NitroEnclavesSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
