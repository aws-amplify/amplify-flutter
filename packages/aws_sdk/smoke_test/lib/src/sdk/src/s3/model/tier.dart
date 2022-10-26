// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.tier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Tier extends _i1.SmithyEnum<Tier> {
  const Tier._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Tier._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bulk = Tier._(
    0,
    'Bulk',
    'Bulk',
  );

  static const expedited = Tier._(
    1,
    'Expedited',
    'Expedited',
  );

  static const standard = Tier._(
    2,
    'Standard',
    'Standard',
  );

  /// All values of [Tier].
  static const values = <Tier>[
    Tier.bulk,
    Tier.expedited,
    Tier.standard,
  ];

  static const List<_i1.SmithySerializer<Tier>> serializers = [
    _i1.SmithyEnumSerializer(
      'Tier',
      values: values,
      sdkUnknown: Tier._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension TierHelpers on List<Tier> {
  /// Returns the value of [Tier] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Tier byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Tier] whose value matches [value].
  Tier byValue(String value) => firstWhere((el) => el.value == value);
}
