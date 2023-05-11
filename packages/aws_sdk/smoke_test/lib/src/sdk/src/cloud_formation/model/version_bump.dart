// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.version_bump; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VersionBump extends _i1.SmithyEnum<VersionBump> {
  const VersionBump._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const VersionBump._sdkUnknown(String value) : super.sdkUnknown(value);

  static const major = VersionBump._(
    0,
    'MAJOR',
    'MAJOR',
  );

  static const minor = VersionBump._(
    1,
    'MINOR',
    'MINOR',
  );

  /// All values of [VersionBump].
  static const values = <VersionBump>[
    VersionBump.major,
    VersionBump.minor,
  ];

  static const List<_i1.SmithySerializer<VersionBump>> serializers = [
    _i1.SmithyEnumSerializer(
      'VersionBump',
      values: values,
      sdkUnknown: VersionBump._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension VersionBumpHelpers on List<VersionBump> {
  /// Returns the value of [VersionBump] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VersionBump byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VersionBump] whose value matches [value].
  VersionBump byValue(String value) => firstWhere((el) => el.value == value);
}
