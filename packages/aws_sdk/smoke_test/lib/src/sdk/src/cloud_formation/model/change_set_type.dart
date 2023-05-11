// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_set_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeSetType extends _i1.SmithyEnum<ChangeSetType> {
  const ChangeSetType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChangeSetType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const create = ChangeSetType._(
    0,
    'CREATE',
    'CREATE',
  );

  static const import = ChangeSetType._(
    1,
    'IMPORT',
    'IMPORT',
  );

  static const update = ChangeSetType._(
    2,
    'UPDATE',
    'UPDATE',
  );

  /// All values of [ChangeSetType].
  static const values = <ChangeSetType>[
    ChangeSetType.create,
    ChangeSetType.import,
    ChangeSetType.update,
  ];

  static const List<_i1.SmithySerializer<ChangeSetType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeSetType',
      values: values,
      sdkUnknown: ChangeSetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeSetTypeHelpers on List<ChangeSetType> {
  /// Returns the value of [ChangeSetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeSetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeSetType] whose value matches [value].
  ChangeSetType byValue(String value) => firstWhere((el) => el.value == value);
}
