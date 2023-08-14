// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.offering_class_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class OfferingClassType extends _i1.SmithyEnum<OfferingClassType> {
  const OfferingClassType._(
    super.index,
    super.name,
    super.value,
  );

  const OfferingClassType._sdkUnknown(super.value) : super.sdkUnknown();

  static const convertible = OfferingClassType._(
    0,
    'CONVERTIBLE',
    'convertible',
  );

  static const standard = OfferingClassType._(
    1,
    'STANDARD',
    'standard',
  );

  /// All values of [OfferingClassType].
  static const values = <OfferingClassType>[
    OfferingClassType.convertible,
    OfferingClassType.standard,
  ];

  static const List<_i1.SmithySerializer<OfferingClassType>> serializers = [
    _i1.SmithyEnumSerializer(
      'OfferingClassType',
      values: values,
      sdkUnknown: OfferingClassType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension OfferingClassTypeHelpers on List<OfferingClassType> {
  /// Returns the value of [OfferingClassType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  OfferingClassType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [OfferingClassType] whose value matches [value].
  OfferingClassType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
