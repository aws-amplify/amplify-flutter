// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ebs_nvme_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EbsNvmeSupport extends _i1.SmithyEnum<EbsNvmeSupport> {
  const EbsNvmeSupport._(
    super.index,
    super.name,
    super.value,
  );

  const EbsNvmeSupport._sdkUnknown(super.value) : super.sdkUnknown();

  static const required = EbsNvmeSupport._(
    0,
    'REQUIRED',
    'required',
  );

  static const supported = EbsNvmeSupport._(
    1,
    'SUPPORTED',
    'supported',
  );

  static const unsupported = EbsNvmeSupport._(
    2,
    'UNSUPPORTED',
    'unsupported',
  );

  /// All values of [EbsNvmeSupport].
  static const values = <EbsNvmeSupport>[
    EbsNvmeSupport.required,
    EbsNvmeSupport.supported,
    EbsNvmeSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<EbsNvmeSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'EbsNvmeSupport',
      values: values,
      sdkUnknown: EbsNvmeSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EbsNvmeSupportHelpers on List<EbsNvmeSupport> {
  /// Returns the value of [EbsNvmeSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EbsNvmeSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EbsNvmeSupport] whose value matches [value].
  EbsNvmeSupport byValue(String value) => firstWhere((el) => el.value == value);
}
