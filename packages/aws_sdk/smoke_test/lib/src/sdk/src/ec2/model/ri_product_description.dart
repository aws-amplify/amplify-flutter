// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ri_product_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RiProductDescription extends _i1.SmithyEnum<RiProductDescription> {
  const RiProductDescription._(
    super.index,
    super.name,
    super.value,
  );

  const RiProductDescription._sdkUnknown(super.value) : super.sdkUnknown();

  static const linuxUnix = RiProductDescription._(
    0,
    'Linux_UNIX',
    'Linux/UNIX',
  );

  static const linuxUnixAmazonVpc = RiProductDescription._(
    1,
    'Linux_UNIX_Amazon_VPC_',
    'Linux/UNIX (Amazon VPC)',
  );

  static const windows = RiProductDescription._(
    2,
    'Windows',
    'Windows',
  );

  static const windowsAmazonVpc = RiProductDescription._(
    3,
    'Windows_Amazon_VPC_',
    'Windows (Amazon VPC)',
  );

  /// All values of [RiProductDescription].
  static const values = <RiProductDescription>[
    RiProductDescription.linuxUnix,
    RiProductDescription.linuxUnixAmazonVpc,
    RiProductDescription.windows,
    RiProductDescription.windowsAmazonVpc,
  ];

  static const List<_i1.SmithySerializer<RiProductDescription>> serializers = [
    _i1.SmithyEnumSerializer(
      'RIProductDescription',
      values: values,
      sdkUnknown: RiProductDescription._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RiProductDescriptionHelpers on List<RiProductDescription> {
  /// Returns the value of [RiProductDescription] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RiProductDescription byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RiProductDescription] whose value matches [value].
  RiProductDescription byValue(String value) =>
      firstWhere((el) => el.value == value);
}
