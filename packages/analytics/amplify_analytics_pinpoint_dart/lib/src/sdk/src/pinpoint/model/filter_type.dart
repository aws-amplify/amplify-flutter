// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.filter_type;

import 'package:smithy/smithy.dart' as _i1;

class FilterType extends _i1.SmithyEnum<FilterType> {
  const FilterType._(int index, String name, String value)
      : super(index, name, value);

  const FilterType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const endpoint = FilterType._(0, 'ENDPOINT', 'ENDPOINT');

  static const system = FilterType._(1, 'SYSTEM', 'SYSTEM');

  /// All values of [FilterType].
  static const values = <FilterType>[FilterType.endpoint, FilterType.system];

  static const List<_i1.SmithySerializer<FilterType>> serializers = [
    _i1.SmithyEnumSerializer('FilterType',
        values: values,
        sdkUnknown: FilterType._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')
        ])
  ];
}

extension FilterTypeHelpers on List<FilterType> {
  /// Returns the value of [FilterType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FilterType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FilterType] whose value matches [value].
  FilterType byValue(String value) => firstWhere((el) => el.value == value);
}
