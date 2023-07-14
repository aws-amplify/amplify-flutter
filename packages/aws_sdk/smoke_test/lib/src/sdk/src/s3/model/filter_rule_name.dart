// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.filter_rule_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FilterRuleName extends _i1.SmithyEnum<FilterRuleName> {
  const FilterRuleName._(
    super.index,
    super.name,
    super.value,
  );

  const FilterRuleName._sdkUnknown(super.value) : super.sdkUnknown();

  static const prefix = FilterRuleName._(
    0,
    'prefix',
    'prefix',
  );

  static const suffix = FilterRuleName._(
    1,
    'suffix',
    'suffix',
  );

  /// All values of [FilterRuleName].
  static const values = <FilterRuleName>[
    FilterRuleName.prefix,
    FilterRuleName.suffix,
  ];

  static const List<_i1.SmithySerializer<FilterRuleName>> serializers = [
    _i1.SmithyEnumSerializer(
      'FilterRuleName',
      values: values,
      sdkUnknown: FilterRuleName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ],
    )
  ];
}

extension FilterRuleNameHelpers on List<FilterRuleName> {
  /// Returns the value of [FilterRuleName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FilterRuleName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FilterRuleName] whose value matches [value].
  FilterRuleName byValue(String value) => firstWhere((el) => el.value == value);
}
