// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.put_mode; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PutMode extends _i1.SmithyEnum<PutMode> {
  const PutMode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PutMode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const merge = PutMode._(
    0,
    'Merge',
    'merge',
  );

  static const overwrite = PutMode._(
    1,
    'Overwrite',
    'overwrite',
  );

  /// All values of [PutMode].
  static const values = <PutMode>[
    PutMode.merge,
    PutMode.overwrite,
  ];

  static const List<_i1.SmithySerializer<PutMode>> serializers = [
    _i1.SmithyEnumSerializer(
      'PutMode',
      values: values,
      sdkUnknown: PutMode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension PutModeHelpers on List<PutMode> {
  /// Returns the value of [PutMode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PutMode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PutMode] whose value matches [value].
  PutMode byValue(String value) => firstWhere((el) => el.value == value);
}
