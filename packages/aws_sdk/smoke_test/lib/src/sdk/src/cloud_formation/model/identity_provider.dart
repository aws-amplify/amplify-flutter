// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.identity_provider; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IdentityProvider extends _i1.SmithyEnum<IdentityProvider> {
  const IdentityProvider._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IdentityProvider._sdkUnknown(String value) : super.sdkUnknown(value);

  static const awsMarketplace = IdentityProvider._(
    0,
    'AWS_Marketplace',
    'AWS_Marketplace',
  );

  static const bitbucket = IdentityProvider._(
    1,
    'Bitbucket',
    'Bitbucket',
  );

  static const gitHub = IdentityProvider._(
    2,
    'GitHub',
    'GitHub',
  );

  /// All values of [IdentityProvider].
  static const values = <IdentityProvider>[
    IdentityProvider.awsMarketplace,
    IdentityProvider.bitbucket,
    IdentityProvider.gitHub,
  ];

  static const List<_i1.SmithySerializer<IdentityProvider>> serializers = [
    _i1.SmithyEnumSerializer(
      'IdentityProvider',
      values: values,
      sdkUnknown: IdentityProvider._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension IdentityProviderHelpers on List<IdentityProvider> {
  /// Returns the value of [IdentityProvider] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IdentityProvider byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IdentityProvider] whose value matches [value].
  IdentityProvider byValue(String value) =>
      firstWhere((el) => el.value == value);
}
