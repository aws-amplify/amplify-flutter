// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.alignment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Alignment extends _i1.SmithyEnum<Alignment> {
  const Alignment._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Alignment._sdkUnknown(String value) : super.sdkUnknown(value);

  static const center = Alignment._(
    0,
    'CENTER',
    'CENTER',
  );

  static const left = Alignment._(
    1,
    'LEFT',
    'LEFT',
  );

  static const right = Alignment._(
    2,
    'RIGHT',
    'RIGHT',
  );

  /// All values of [Alignment].
  static const values = <Alignment>[
    Alignment.center,
    Alignment.left,
    Alignment.right,
  ];

  static const List<_i1.SmithySerializer<Alignment>> serializers = [
    _i1.SmithyEnumSerializer(
      'Alignment',
      values: values,
      sdkUnknown: Alignment._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension AlignmentHelpers on List<Alignment> {
  /// Returns the value of [Alignment] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Alignment byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Alignment] whose value matches [value].
  Alignment byValue(String value) => firstWhere((el) => el.value == value);
}
