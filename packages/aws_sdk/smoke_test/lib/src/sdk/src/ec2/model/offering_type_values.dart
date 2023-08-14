// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.offering_type_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OfferingTypeValues extends _i1.SmithyEnum<OfferingTypeValues> {
  const OfferingTypeValues._(
    super.index,
    super.name,
    super.value,
  );

  const OfferingTypeValues._sdkUnknown(super.value) : super.sdkUnknown();

  static const allUpfront = OfferingTypeValues._(
    0,
    'All_Upfront',
    'All Upfront',
  );

  static const heavyUtilization = OfferingTypeValues._(
    1,
    'Heavy_Utilization',
    'Heavy Utilization',
  );

  static const lightUtilization = OfferingTypeValues._(
    2,
    'Light_Utilization',
    'Light Utilization',
  );

  static const mediumUtilization = OfferingTypeValues._(
    3,
    'Medium_Utilization',
    'Medium Utilization',
  );

  static const noUpfront = OfferingTypeValues._(
    4,
    'No_Upfront',
    'No Upfront',
  );

  static const partialUpfront = OfferingTypeValues._(
    5,
    'Partial_Upfront',
    'Partial Upfront',
  );

  /// All values of [OfferingTypeValues].
  static const values = <OfferingTypeValues>[
    OfferingTypeValues.allUpfront,
    OfferingTypeValues.heavyUtilization,
    OfferingTypeValues.lightUtilization,
    OfferingTypeValues.mediumUtilization,
    OfferingTypeValues.noUpfront,
    OfferingTypeValues.partialUpfront,
  ];

  static const List<_i1.SmithySerializer<OfferingTypeValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'OfferingTypeValues',
      values: values,
      sdkUnknown: OfferingTypeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension OfferingTypeValuesHelpers on List<OfferingTypeValues> {
  /// Returns the value of [OfferingTypeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OfferingTypeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OfferingTypeValues] whose value matches [value].
  OfferingTypeValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
