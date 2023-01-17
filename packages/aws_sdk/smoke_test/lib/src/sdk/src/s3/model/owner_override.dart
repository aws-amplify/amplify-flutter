// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.owner_override; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OwnerOverride extends _i1.SmithyEnum<OwnerOverride> {
  const OwnerOverride._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const OwnerOverride._sdkUnknown(String value) : super.sdkUnknown(value);

  static const destination = OwnerOverride._(
    0,
    'Destination',
    'Destination',
  );

  /// All values of [OwnerOverride].
  static const values = <OwnerOverride>[OwnerOverride.destination];

  static const List<_i1.SmithySerializer<OwnerOverride>> serializers = [
    _i1.SmithyEnumSerializer(
      'OwnerOverride',
      values: values,
      sdkUnknown: OwnerOverride._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension OwnerOverrideHelpers on List<OwnerOverride> {
  /// Returns the value of [OwnerOverride] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OwnerOverride byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OwnerOverride] whose value matches [value].
  OwnerOverride byValue(String value) => firstWhere((el) => el.value == value);
}
