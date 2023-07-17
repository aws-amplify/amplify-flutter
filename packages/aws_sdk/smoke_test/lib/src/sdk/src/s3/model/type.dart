// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class S3Type extends _i1.SmithyEnum<S3Type> {
  const S3Type._(
    super.index,
    super.name,
    super.value,
  );

  const S3Type._sdkUnknown(super.value) : super.sdkUnknown();

  static const amazonCustomerByEmail = S3Type._(
    0,
    'AmazonCustomerByEmail',
    'AmazonCustomerByEmail',
  );

  static const canonicalUser = S3Type._(
    1,
    'CanonicalUser',
    'CanonicalUser',
  );

  static const group = S3Type._(
    2,
    'Group',
    'Group',
  );

  /// All values of [S3Type].
  static const values = <S3Type>[
    S3Type.amazonCustomerByEmail,
    S3Type.canonicalUser,
    S3Type.group,
  ];

  static const List<_i1.SmithySerializer<S3Type>> serializers = [
    _i1.SmithyEnumSerializer(
      'Type',
      values: values,
      sdkUnknown: S3Type._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension S3TypeHelpers on List<S3Type> {
  /// Returns the value of [S3Type] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  S3Type byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [S3Type] whose value matches [value].
  S3Type byValue(String value) => firstWhere((el) => el.value == value);
}
