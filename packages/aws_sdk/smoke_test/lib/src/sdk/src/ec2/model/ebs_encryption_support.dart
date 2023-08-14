// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_encryption_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EbsEncryptionSupport extends _i1.SmithyEnum<EbsEncryptionSupport> {
  const EbsEncryptionSupport._(
    super.index,
    super.name,
    super.value,
  );

  const EbsEncryptionSupport._sdkUnknown(super.value) : super.sdkUnknown();

  static const supported = EbsEncryptionSupport._(
    0,
    'supported',
    'supported',
  );

  static const unsupported = EbsEncryptionSupport._(
    1,
    'unsupported',
    'unsupported',
  );

  /// All values of [EbsEncryptionSupport].
  static const values = <EbsEncryptionSupport>[
    EbsEncryptionSupport.supported,
    EbsEncryptionSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<EbsEncryptionSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'EbsEncryptionSupport',
      values: values,
      sdkUnknown: EbsEncryptionSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EbsEncryptionSupportHelpers on List<EbsEncryptionSupport> {
  /// Returns the value of [EbsEncryptionSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EbsEncryptionSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EbsEncryptionSupport] whose value matches [value].
  EbsEncryptionSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
