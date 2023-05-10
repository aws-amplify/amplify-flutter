// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ChangeSource extends _i1.SmithyEnum<ChangeSource> {
  const ChangeSource._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ChangeSource._sdkUnknown(String value) : super.sdkUnknown(value);

  static const automatic = ChangeSource._(
    0,
    'Automatic',
    'Automatic',
  );

  static const directModification = ChangeSource._(
    1,
    'DirectModification',
    'DirectModification',
  );

  static const parameterReference = ChangeSource._(
    2,
    'ParameterReference',
    'ParameterReference',
  );

  static const resourceAttribute = ChangeSource._(
    3,
    'ResourceAttribute',
    'ResourceAttribute',
  );

  static const resourceReference = ChangeSource._(
    4,
    'ResourceReference',
    'ResourceReference',
  );

  /// All values of [ChangeSource].
  static const values = <ChangeSource>[
    ChangeSource.automatic,
    ChangeSource.directModification,
    ChangeSource.parameterReference,
    ChangeSource.resourceAttribute,
    ChangeSource.resourceReference,
  ];

  static const List<_i1.SmithySerializer<ChangeSource>> serializers = [
    _i1.SmithyEnumSerializer(
      'ChangeSource',
      values: values,
      sdkUnknown: ChangeSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ChangeSourceHelpers on List<ChangeSource> {
  /// Returns the value of [ChangeSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ChangeSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ChangeSource] whose value matches [value].
  ChangeSource byValue(String value) => firstWhere((el) => el.value == value);
}
