// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library aws_json1_0_v2.json_rpc_10.model.integer_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IntegerEnum extends _i1.SmithyIntEnum<IntegerEnum> {
  const IntegerEnum._(
    int index,
    String name,
    int value,
  ) : super(
          index,
          name,
          value,
        );

  const IntegerEnum._sdkUnknown(int value) : super.sdkUnknown(value);

  static const a = IntegerEnum._(
    0,
    'A',
    1,
  );

  static const b = IntegerEnum._(
    1,
    'B',
    2,
  );

  static const c = IntegerEnum._(
    2,
    'C',
    3,
  );

  /// All values of [IntegerEnum].
  static const values = <IntegerEnum>[
    IntegerEnum.a,
    IntegerEnum.b,
    IntegerEnum.c,
  ];

  static const List<_i1.SmithySerializer<IntegerEnum>> serializers = [
    _i1.SmithyIntEnumSerializer(
      'IntegerEnum',
      values: values,
      sdkUnknown: IntegerEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension IntegerEnumHelpers on List<IntegerEnum> {
  /// Returns the value of [IntegerEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IntegerEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IntegerEnum] whose value matches [value].
  IntegerEnum byValue(int value) => firstWhere((el) => el.value == value);
}
