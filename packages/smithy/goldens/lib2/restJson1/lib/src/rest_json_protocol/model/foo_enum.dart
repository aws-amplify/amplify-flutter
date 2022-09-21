// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.foo_enum; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FooEnum extends _i1.SmithyEnum<FooEnum> {
  const FooEnum._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FooEnum._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bar = FooEnum._(
    0,
    'BAR',
    'Bar',
  );

  static const baz = FooEnum._(
    1,
    'BAZ',
    'Baz',
  );

  static const foo = FooEnum._(
    2,
    'FOO',
    'Foo',
  );

  static const one = FooEnum._(
    3,
    'ONE',
    '1',
  );

  static const zero = FooEnum._(
    4,
    'ZERO',
    '0',
  );

  /// All values of [FooEnum].
  static const values = <FooEnum>[
    FooEnum.bar,
    FooEnum.baz,
    FooEnum.foo,
    FooEnum.one,
    FooEnum.zero,
  ];

  static const List<_i1.SmithySerializer<FooEnum>> serializers = [
    _i1.SmithyEnumSerializer(
      'FooEnum',
      values: values,
      sdkUnknown: FooEnum._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension FooEnumHelpers on List<FooEnum> {
  /// Returns the value of [FooEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FooEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FooEnum] whose value matches [value].
  FooEnum byValue(String value) => firstWhere((el) => el.value == value);
}
