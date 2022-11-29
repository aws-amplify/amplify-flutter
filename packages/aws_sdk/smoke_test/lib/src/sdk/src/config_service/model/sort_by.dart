// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.sort_by; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SortBy extends _i1.SmithyEnum<SortBy> {
  const SortBy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SortBy._sdkUnknown(String value) : super.sdkUnknown(value);

  static const score = SortBy._(
    0,
    'SCORE',
    'SCORE',
  );

  /// All values of [SortBy].
  static const values = <SortBy>[SortBy.score];

  static const List<_i1.SmithySerializer<SortBy>> serializers = [
    _i1.SmithyEnumSerializer(
      'SortBy',
      values: values,
      sdkUnknown: SortBy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension SortByHelpers on List<SortBy> {
  /// Returns the value of [SortBy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SortBy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SortBy] whose value matches [value].
  SortBy byValue(String value) => firstWhere((el) => el.value == value);
}
