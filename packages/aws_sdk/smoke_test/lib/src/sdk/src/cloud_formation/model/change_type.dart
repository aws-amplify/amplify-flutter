// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeType extends _i1.SmithyEnum<ChangeType> {
  const ChangeType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChangeType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const resource = ChangeType._(
    0,
    'Resource',
    'Resource',
  );

  /// All values of [ChangeType].
  static const values = <ChangeType>[ChangeType.resource];

  static const List<_i1.SmithySerializer<ChangeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeType',
      values: values,
      sdkUnknown: ChangeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeTypeHelpers on List<ChangeType> {
  /// Returns the value of [ChangeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeType] whose value matches [value].
  ChangeType byValue(String value) => firstWhere((el) => el.value == value);
}
