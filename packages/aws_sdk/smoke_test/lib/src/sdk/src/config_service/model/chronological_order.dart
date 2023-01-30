// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.chronological_order; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChronologicalOrder extends _i1.SmithyEnum<ChronologicalOrder> {
  const ChronologicalOrder._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChronologicalOrder._sdkUnknown(String value) : super.sdkUnknown(value);

  static const forward = ChronologicalOrder._(
    0,
    'Forward',
    'Forward',
  );

  static const reverse = ChronologicalOrder._(
    1,
    'Reverse',
    'Reverse',
  );

  /// All values of [ChronologicalOrder].
  static const values = <ChronologicalOrder>[
    ChronologicalOrder.forward,
    ChronologicalOrder.reverse,
  ];

  static const List<_i1.SmithySerializer<ChronologicalOrder>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChronologicalOrder',
      values: values,
      sdkUnknown: ChronologicalOrder._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension ChronologicalOrderHelpers on List<ChronologicalOrder> {
  /// Returns the value of [ChronologicalOrder] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChronologicalOrder byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChronologicalOrder] whose value matches [value].
  ChronologicalOrder byValue(String value) =>
      firstWhere((el) => el.value == value);
}
