// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.trust_provider_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrustProviderType extends _i1.SmithyEnum<TrustProviderType> {
  const TrustProviderType._(
    super.index,
    super.name,
    super.value,
  );

  const TrustProviderType._sdkUnknown(super.value) : super.sdkUnknown();

  static const device = TrustProviderType._(
    0,
    'device',
    'device',
  );

  static const user = TrustProviderType._(
    1,
    'user',
    'user',
  );

  /// All values of [TrustProviderType].
  static const values = <TrustProviderType>[
    TrustProviderType.device,
    TrustProviderType.user,
  ];

  static const List<_i1.SmithySerializer<TrustProviderType>> serializers = [
    _i1.SmithyEnumSerializer(
      'TrustProviderType',
      values: values,
      sdkUnknown: TrustProviderType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrustProviderTypeHelpers on List<TrustProviderType> {
  /// Returns the value of [TrustProviderType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrustProviderType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrustProviderType] whose value matches [value].
  TrustProviderType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
