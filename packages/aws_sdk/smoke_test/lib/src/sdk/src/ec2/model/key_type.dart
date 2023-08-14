// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.key_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class KeyType extends _i1.SmithyEnum<KeyType> {
  const KeyType._(
    super.index,
    super.name,
    super.value,
  );

  const KeyType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ed25519 = KeyType._(
    0,
    'ed25519',
    'ed25519',
  );

  static const rsa = KeyType._(
    1,
    'rsa',
    'rsa',
  );

  /// All values of [KeyType].
  static const values = <KeyType>[
    KeyType.ed25519,
    KeyType.rsa,
  ];

  static const List<_i1.SmithySerializer<KeyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'KeyType',
      values: values,
      sdkUnknown: KeyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension KeyTypeHelpers on List<KeyType> {
  /// Returns the value of [KeyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  KeyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [KeyType] whose value matches [value].
  KeyType byValue(String value) => firstWhere((el) => el.value == value);
}
