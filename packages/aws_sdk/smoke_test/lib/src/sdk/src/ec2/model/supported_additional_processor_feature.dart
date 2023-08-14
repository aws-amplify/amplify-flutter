// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.supported_additional_processor_feature; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SupportedAdditionalProcessorFeature
    extends _i1.SmithyEnum<SupportedAdditionalProcessorFeature> {
  const SupportedAdditionalProcessorFeature._(
    super.index,
    super.name,
    super.value,
  );

  const SupportedAdditionalProcessorFeature._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const amdSevSnp = SupportedAdditionalProcessorFeature._(
    0,
    'AMD_SEV_SNP',
    'amd-sev-snp',
  );

  /// All values of [SupportedAdditionalProcessorFeature].
  static const values = <SupportedAdditionalProcessorFeature>[
    SupportedAdditionalProcessorFeature.amdSevSnp
  ];

  static const List<_i1.SmithySerializer<SupportedAdditionalProcessorFeature>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'SupportedAdditionalProcessorFeature',
      values: values,
      sdkUnknown: SupportedAdditionalProcessorFeature._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SupportedAdditionalProcessorFeatureHelpers
    on List<SupportedAdditionalProcessorFeature> {
  /// Returns the value of [SupportedAdditionalProcessorFeature] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SupportedAdditionalProcessorFeature byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SupportedAdditionalProcessorFeature] whose value matches [value].
  SupportedAdditionalProcessorFeature byValue(String value) =>
      firstWhere((el) => el.value == value);
}
